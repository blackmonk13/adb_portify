part of providers;

@Riverpod(keepAlive: true)
class AdbPath extends _$AdbPath {
  @override
  FutureOr<String?> build() async {
    final systemAdb = await ref.watch(adbFromSystemPathProvider.future);
    return systemAdb ?? adbPath;
  }

  Future<void> setPath(String? newPath) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final isPathSet = await setAdbPath(newPath);
      if (isPathSet) {
        return newPath;
      }
      return null;
    });
  }
}

@Riverpod(keepAlive: true)
FutureOr<String?> adbFromSystemPath(AdbFromSystemPathRef ref) async {
  final process = await Process.start('where', ['adb']);
  final output = await process.stdout.transform(const Utf8Decoder()).join();
  if (output.isEmpty) {
    return null;
  } else {
    return output;
  }
}

@riverpod
FutureOr<Process?> adbProcess(AdbProcessRef ref, List<String> args) async {
  final adbPath = await ref.watch(adbPathProvider.future);
  if (adbPath == null) {
    return null;
  }

  final execPath = File(adbPath);
  return Process.start(
    'adb',
    args,
    workingDirectory: execPath.parent.path,
  );
}

@riverpod
Stream<List<String>> adbOutput(AdbOutputRef ref, List<String> args) async* {
  final process = await ref.read(adbProcessProvider(args).future);

  final output = <String>[];

  if (process == null) {
    yield output;
    return;
  }

  await for (var line in process.stdout
      .transform(const Utf8Decoder())
      .transform(const LineSplitter())) {
    if (line.isEmpty) {
      continue;
    }

    output.add(line);
  }

  yield output;
}

@riverpod
FutureOr<List<String>> adbDeviceOutput(
  AdbDeviceOutputRef ref,
  String serial,
  List<String> args,
) {
  final deviceArgs = [
    '-s',
    serial,
    ...args,
  ];
  return ref.read(adbOutputProvider(deviceArgs).future);
}

@riverpod
class AdbDevices extends _$AdbDevices {
  @override
  Stream<List<DeviceInfo>> build() {
    return periodicFuture(const Duration(seconds: 5), () => getDevices());
  }

  Future<List<DeviceInfo>> getDevices() async {
    final adbOutput = await ref.read(adbOutputProvider(
      const [
        'devices',
        '-l',
      ],
    ).future);

    final devices = <DeviceInfo>[];

    for (final line in adbOutput) {
      if (line.contains('devices attached')) {
        continue;
      }

      final deviceInfo = parseAdbDevicesLine(line);

      if (deviceInfo == null) {
        continue;
      }
      devices.add(deviceInfo);
    }

    return devices;
  }

  DeviceInfo? parseAdbDevicesLine(String line) {
    final match = adbDevicesRegex.firstMatch(line);

    if (match == null) {
      return null;
    }

    final serial = match.namedGroup('serial');
    final stateString = match.namedGroup('state');
    final info = match.namedGroup('info');

    if (serial == null || stateString == null || info == null) {
      return null;
    }

    if ([serial, stateString].any((element) => element.isEmpty)) {
      return null;
    }

    final state = deviceStateFromRawValue(stateString);

    final infoMatch = infoRegex.firstMatch(info);

    if (infoMatch == null) {
      return DeviceInfo(
        serial: serial,
        state: state,
      );
    }

    return DeviceInfo(
      serial: serial,
      state: state,
      product: infoMatch.group(1),
      model: infoMatch.group(2),
      device: infoMatch.group(3),
      transportId: infoMatch.group(4),
    );
  }
}

@riverpod
class DeviceProps extends _$DeviceProps {
  @override
  FutureOr<List<String>> build(String deviceSerial) {
    return getDeviceProps();
  }

  FutureOr<List<String>> getDeviceProps() async {
    final adbOutput = await ref.read(adbDeviceOutputProvider(
      deviceSerial,
      const [
        'shell',
        'getprop',
      ],
    ).future);

    final props = <String>[];

    for (final line in adbOutput) {
      props.add(line);
    }

    return props;
  }
}

@riverpod
class DevicePorts extends _$DevicePorts {
  @override
  Stream<List<PortInfo>> build(String deviceSerial, bool reverse) {
    return periodicFuture(const Duration(seconds: 5), () => getDevicePorts());
  }

  Future<List<PortInfo>> getDevicePorts() async {
    final portArgs = [
      reverse ? 'reverse' : 'forward',
      '--list',
    ];
    
    final adbOutput = await ref.read(adbDeviceOutputProvider(
      deviceSerial,
      portArgs,
    ).future);

    final ports = <PortInfo>[];

    for (final line in adbOutput) {
      if (line.contains('devices attached')) {
        continue;
      }

      final portInfo = parseAdbListLine(line);

      if (portInfo == null) {
        continue;
      }

      ports.add(portInfo);
    }

    return ports;
  }

  PortInfo? parseAdbListLine(String line) {
    final match = adbListRegex.firstMatch(line);

    if (match == null) {
      return null;
    }

    final serial = match.namedGroup('serial');
    final local = match.namedGroup('local')?.split(':');
    final remote = match.namedGroup('remote')?.split(':');

    if (serial == null || local == null || remote == null) {
      return null;
    }

    if ([local, remote]
        .any((element) => element.isEmpty || element.length < 2)) {
      return null;
    }

    return PortInfo(
      serial: serial,
      protocol: local[0],
      localPort: local[1],
      remotePort: remote[1],
    );
  }
}

@riverpod
class PortsController extends _$PortsController {
  @override
  FutureOr<void> build(String deviceSerial) {
    return null;
  }

  Future<void> forwardPort(
    String local,
    String remote, {
    String protocol = 'tcp',
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await updatePorts(local, remote, protocol: protocol);
      return;
    });
  }

  Future<void> reversePort(
    String local,
    String remote, {
    String protocol = 'tcp',
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await updatePorts(
        local,
        remote,
        protocol: protocol,
        reverse: true,
      );
      return;
    });
  }

  FutureOr<List<String>> adbDevicePortsOutput(
    List<String> args, {
    bool reverse = false,
  }) async {
    final adbOutput = await ref.read(adbDeviceOutputProvider(
      deviceSerial,
      [
        reverse ? 'reverse' : 'forward',
        ...args,
      ],
    ).future);

    final output = <String>[];

    for (final line in adbOutput) {
      output.add(line);
    }

    return output;
  }

  FutureOr<List<String>> updatePorts(
    String local,
    String remote, {
    String protocol = 'tcp',
    bool reverse = false,
  }) {
    return adbDevicePortsOutput(
      [
        '$protocol:$local',
        '$protocol:$remote',
      ],
      reverse: reverse,
    );
  }

  FutureOr<List<String>> removePort(
    String local, {
    String protocol = 'tcp',
    bool reverse = false,
  }) async {
    return adbDevicePortsOutput(
      [
        '--remove',
        '$protocol:$local',
      ],
      reverse: reverse,
    );
  }

  FutureOr<List<String>> removeAll({
    bool reverse = false,
  }) async {
    return adbDevicePortsOutput(
      [
        '--remove-all',
      ],
      reverse: reverse,
    );
  }
}
