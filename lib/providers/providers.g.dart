// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adbFromSystemPathHash() => r'2eac6ea166a1ad973038dad4e229e0248969648d';

/// See also [adbFromSystemPath].
@ProviderFor(adbFromSystemPath)
final adbFromSystemPathProvider = FutureProvider<String?>.internal(
  adbFromSystemPath,
  name: r'adbFromSystemPathProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$adbFromSystemPathHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AdbFromSystemPathRef = FutureProviderRef<String?>;
String _$adbProcessHash() => r'6c41027965a08024a96a21fc57327ac9d8c3da0a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [adbProcess].
@ProviderFor(adbProcess)
const adbProcessProvider = AdbProcessFamily();

/// See also [adbProcess].
class AdbProcessFamily extends Family<AsyncValue<Process?>> {
  /// See also [adbProcess].
  const AdbProcessFamily();

  /// See also [adbProcess].
  AdbProcessProvider call(
    List<String> args,
  ) {
    return AdbProcessProvider(
      args,
    );
  }

  @visibleForOverriding
  @override
  AdbProcessProvider getProviderOverride(
    covariant AdbProcessProvider provider,
  ) {
    return call(
      provider.args,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'adbProcessProvider';
}

/// See also [adbProcess].
class AdbProcessProvider extends AutoDisposeFutureProvider<Process?> {
  /// See also [adbProcess].
  AdbProcessProvider(
    List<String> args,
  ) : this._internal(
          (ref) => adbProcess(
            ref as AdbProcessRef,
            args,
          ),
          from: adbProcessProvider,
          name: r'adbProcessProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adbProcessHash,
          dependencies: AdbProcessFamily._dependencies,
          allTransitiveDependencies:
              AdbProcessFamily._allTransitiveDependencies,
          args: args,
        );

  AdbProcessProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.args,
  }) : super.internal();

  final List<String> args;

  @override
  Override overrideWith(
    FutureOr<Process?> Function(AdbProcessRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AdbProcessProvider._internal(
        (ref) => create(ref as AdbProcessRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        args: args,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Process?> createElement() {
    return _AdbProcessProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdbProcessProvider && other.args == args;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, args.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AdbProcessRef on AutoDisposeFutureProviderRef<Process?> {
  /// The parameter `args` of this provider.
  List<String> get args;
}

class _AdbProcessProviderElement
    extends AutoDisposeFutureProviderElement<Process?> with AdbProcessRef {
  _AdbProcessProviderElement(super.provider);

  @override
  List<String> get args => (origin as AdbProcessProvider).args;
}

String _$adbOutputHash() => r'7f339b27384d5f04df87dd2dc4c236046fdfba04';

/// See also [adbOutput].
@ProviderFor(adbOutput)
const adbOutputProvider = AdbOutputFamily();

/// See also [adbOutput].
class AdbOutputFamily extends Family<AsyncValue<List<String>>> {
  /// See also [adbOutput].
  const AdbOutputFamily();

  /// See also [adbOutput].
  AdbOutputProvider call(
    List<String> args,
  ) {
    return AdbOutputProvider(
      args,
    );
  }

  @visibleForOverriding
  @override
  AdbOutputProvider getProviderOverride(
    covariant AdbOutputProvider provider,
  ) {
    return call(
      provider.args,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'adbOutputProvider';
}

/// See also [adbOutput].
class AdbOutputProvider extends AutoDisposeStreamProvider<List<String>> {
  /// See also [adbOutput].
  AdbOutputProvider(
    List<String> args,
  ) : this._internal(
          (ref) => adbOutput(
            ref as AdbOutputRef,
            args,
          ),
          from: adbOutputProvider,
          name: r'adbOutputProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adbOutputHash,
          dependencies: AdbOutputFamily._dependencies,
          allTransitiveDependencies: AdbOutputFamily._allTransitiveDependencies,
          args: args,
        );

  AdbOutputProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.args,
  }) : super.internal();

  final List<String> args;

  @override
  Override overrideWith(
    Stream<List<String>> Function(AdbOutputRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AdbOutputProvider._internal(
        (ref) => create(ref as AdbOutputRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        args: args,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<String>> createElement() {
    return _AdbOutputProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdbOutputProvider && other.args == args;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, args.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AdbOutputRef on AutoDisposeStreamProviderRef<List<String>> {
  /// The parameter `args` of this provider.
  List<String> get args;
}

class _AdbOutputProviderElement
    extends AutoDisposeStreamProviderElement<List<String>> with AdbOutputRef {
  _AdbOutputProviderElement(super.provider);

  @override
  List<String> get args => (origin as AdbOutputProvider).args;
}

String _$adbDeviceOutputHash() => r'11c0a30a95ee23d1b522f30d9312b85d3aa19f8b';

/// See also [adbDeviceOutput].
@ProviderFor(adbDeviceOutput)
const adbDeviceOutputProvider = AdbDeviceOutputFamily();

/// See also [adbDeviceOutput].
class AdbDeviceOutputFamily extends Family<AsyncValue<List<String>>> {
  /// See also [adbDeviceOutput].
  const AdbDeviceOutputFamily();

  /// See also [adbDeviceOutput].
  AdbDeviceOutputProvider call(
    String serial,
    List<String> args,
  ) {
    return AdbDeviceOutputProvider(
      serial,
      args,
    );
  }

  @visibleForOverriding
  @override
  AdbDeviceOutputProvider getProviderOverride(
    covariant AdbDeviceOutputProvider provider,
  ) {
    return call(
      provider.serial,
      provider.args,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'adbDeviceOutputProvider';
}

/// See also [adbDeviceOutput].
class AdbDeviceOutputProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [adbDeviceOutput].
  AdbDeviceOutputProvider(
    String serial,
    List<String> args,
  ) : this._internal(
          (ref) => adbDeviceOutput(
            ref as AdbDeviceOutputRef,
            serial,
            args,
          ),
          from: adbDeviceOutputProvider,
          name: r'adbDeviceOutputProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adbDeviceOutputHash,
          dependencies: AdbDeviceOutputFamily._dependencies,
          allTransitiveDependencies:
              AdbDeviceOutputFamily._allTransitiveDependencies,
          serial: serial,
          args: args,
        );

  AdbDeviceOutputProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.serial,
    required this.args,
  }) : super.internal();

  final String serial;
  final List<String> args;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(AdbDeviceOutputRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AdbDeviceOutputProvider._internal(
        (ref) => create(ref as AdbDeviceOutputRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        serial: serial,
        args: args,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _AdbDeviceOutputProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdbDeviceOutputProvider &&
        other.serial == serial &&
        other.args == args;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, serial.hashCode);
    hash = _SystemHash.combine(hash, args.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AdbDeviceOutputRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `serial` of this provider.
  String get serial;

  /// The parameter `args` of this provider.
  List<String> get args;
}

class _AdbDeviceOutputProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with AdbDeviceOutputRef {
  _AdbDeviceOutputProviderElement(super.provider);

  @override
  String get serial => (origin as AdbDeviceOutputProvider).serial;
  @override
  List<String> get args => (origin as AdbDeviceOutputProvider).args;
}

String _$adbPathHash() => r'4eaddac6a25970160ca9704f7472c995cd34baa1';

/// See also [AdbPath].
@ProviderFor(AdbPath)
final adbPathProvider = AsyncNotifierProvider<AdbPath, String?>.internal(
  AdbPath.new,
  name: r'adbPathProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$adbPathHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AdbPath = AsyncNotifier<String?>;
String _$adbDevicesHash() => r'fab89a6476641a0e644f87cf711075a60e71b9a2';

/// See also [AdbDevices].
@ProviderFor(AdbDevices)
final adbDevicesProvider =
    AutoDisposeStreamNotifierProvider<AdbDevices, List<DeviceInfo>>.internal(
  AdbDevices.new,
  name: r'adbDevicesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$adbDevicesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AdbDevices = AutoDisposeStreamNotifier<List<DeviceInfo>>;
String _$devicePropsHash() => r'932fb68a6ab3a1db3952b49df0f8fd8143436b47';

abstract class _$DeviceProps
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final String deviceSerial;

  FutureOr<List<String>> build(
    String deviceSerial,
  );
}

/// See also [DeviceProps].
@ProviderFor(DeviceProps)
const devicePropsProvider = DevicePropsFamily();

/// See also [DeviceProps].
class DevicePropsFamily extends Family<AsyncValue<List<String>>> {
  /// See also [DeviceProps].
  const DevicePropsFamily();

  /// See also [DeviceProps].
  DevicePropsProvider call(
    String deviceSerial,
  ) {
    return DevicePropsProvider(
      deviceSerial,
    );
  }

  @visibleForOverriding
  @override
  DevicePropsProvider getProviderOverride(
    covariant DevicePropsProvider provider,
  ) {
    return call(
      provider.deviceSerial,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'devicePropsProvider';
}

/// See also [DeviceProps].
class DevicePropsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DeviceProps, List<String>> {
  /// See also [DeviceProps].
  DevicePropsProvider(
    String deviceSerial,
  ) : this._internal(
          () => DeviceProps()..deviceSerial = deviceSerial,
          from: devicePropsProvider,
          name: r'devicePropsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$devicePropsHash,
          dependencies: DevicePropsFamily._dependencies,
          allTransitiveDependencies:
              DevicePropsFamily._allTransitiveDependencies,
          deviceSerial: deviceSerial,
        );

  DevicePropsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.deviceSerial,
  }) : super.internal();

  final String deviceSerial;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant DeviceProps notifier,
  ) {
    return notifier.build(
      deviceSerial,
    );
  }

  @override
  Override overrideWith(DeviceProps Function() create) {
    return ProviderOverride(
      origin: this,
      override: DevicePropsProvider._internal(
        () => create()..deviceSerial = deviceSerial,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        deviceSerial: deviceSerial,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DeviceProps, List<String>>
      createElement() {
    return _DevicePropsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DevicePropsProvider && other.deviceSerial == deviceSerial;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, deviceSerial.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DevicePropsRef on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `deviceSerial` of this provider.
  String get deviceSerial;
}

class _DevicePropsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DeviceProps, List<String>>
    with DevicePropsRef {
  _DevicePropsProviderElement(super.provider);

  @override
  String get deviceSerial => (origin as DevicePropsProvider).deviceSerial;
}

String _$devicePortsHash() => r'22b1b9ce8c29f7befbe40e5a027175c90cefbf1f';

abstract class _$DevicePorts
    extends BuildlessAutoDisposeStreamNotifier<List<PortInfo>> {
  late final String deviceSerial;
  late final bool reverse;

  Stream<List<PortInfo>> build(
    String deviceSerial,
    bool reverse,
  );
}

/// See also [DevicePorts].
@ProviderFor(DevicePorts)
const devicePortsProvider = DevicePortsFamily();

/// See also [DevicePorts].
class DevicePortsFamily extends Family<AsyncValue<List<PortInfo>>> {
  /// See also [DevicePorts].
  const DevicePortsFamily();

  /// See also [DevicePorts].
  DevicePortsProvider call(
    String deviceSerial,
    bool reverse,
  ) {
    return DevicePortsProvider(
      deviceSerial,
      reverse,
    );
  }

  @visibleForOverriding
  @override
  DevicePortsProvider getProviderOverride(
    covariant DevicePortsProvider provider,
  ) {
    return call(
      provider.deviceSerial,
      provider.reverse,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'devicePortsProvider';
}

/// See also [DevicePorts].
class DevicePortsProvider
    extends AutoDisposeStreamNotifierProviderImpl<DevicePorts, List<PortInfo>> {
  /// See also [DevicePorts].
  DevicePortsProvider(
    String deviceSerial,
    bool reverse,
  ) : this._internal(
          () => DevicePorts()
            ..deviceSerial = deviceSerial
            ..reverse = reverse,
          from: devicePortsProvider,
          name: r'devicePortsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$devicePortsHash,
          dependencies: DevicePortsFamily._dependencies,
          allTransitiveDependencies:
              DevicePortsFamily._allTransitiveDependencies,
          deviceSerial: deviceSerial,
          reverse: reverse,
        );

  DevicePortsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.deviceSerial,
    required this.reverse,
  }) : super.internal();

  final String deviceSerial;
  final bool reverse;

  @override
  Stream<List<PortInfo>> runNotifierBuild(
    covariant DevicePorts notifier,
  ) {
    return notifier.build(
      deviceSerial,
      reverse,
    );
  }

  @override
  Override overrideWith(DevicePorts Function() create) {
    return ProviderOverride(
      origin: this,
      override: DevicePortsProvider._internal(
        () => create()
          ..deviceSerial = deviceSerial
          ..reverse = reverse,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        deviceSerial: deviceSerial,
        reverse: reverse,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<DevicePorts, List<PortInfo>>
      createElement() {
    return _DevicePortsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DevicePortsProvider &&
        other.deviceSerial == deviceSerial &&
        other.reverse == reverse;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, deviceSerial.hashCode);
    hash = _SystemHash.combine(hash, reverse.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DevicePortsRef on AutoDisposeStreamNotifierProviderRef<List<PortInfo>> {
  /// The parameter `deviceSerial` of this provider.
  String get deviceSerial;

  /// The parameter `reverse` of this provider.
  bool get reverse;
}

class _DevicePortsProviderElement
    extends AutoDisposeStreamNotifierProviderElement<DevicePorts,
        List<PortInfo>> with DevicePortsRef {
  _DevicePortsProviderElement(super.provider);

  @override
  String get deviceSerial => (origin as DevicePortsProvider).deviceSerial;
  @override
  bool get reverse => (origin as DevicePortsProvider).reverse;
}

String _$portsControllerHash() => r'17fa94396fc29e904c9692715d3e26a955f3dbe6';

abstract class _$PortsController
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final String deviceSerial;

  FutureOr<void> build(
    String deviceSerial,
  );
}

/// See also [PortsController].
@ProviderFor(PortsController)
const portsControllerProvider = PortsControllerFamily();

/// See also [PortsController].
class PortsControllerFamily extends Family<AsyncValue<void>> {
  /// See also [PortsController].
  const PortsControllerFamily();

  /// See also [PortsController].
  PortsControllerProvider call(
    String deviceSerial,
  ) {
    return PortsControllerProvider(
      deviceSerial,
    );
  }

  @visibleForOverriding
  @override
  PortsControllerProvider getProviderOverride(
    covariant PortsControllerProvider provider,
  ) {
    return call(
      provider.deviceSerial,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'portsControllerProvider';
}

/// See also [PortsController].
class PortsControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PortsController, void> {
  /// See also [PortsController].
  PortsControllerProvider(
    String deviceSerial,
  ) : this._internal(
          () => PortsController()..deviceSerial = deviceSerial,
          from: portsControllerProvider,
          name: r'portsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$portsControllerHash,
          dependencies: PortsControllerFamily._dependencies,
          allTransitiveDependencies:
              PortsControllerFamily._allTransitiveDependencies,
          deviceSerial: deviceSerial,
        );

  PortsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.deviceSerial,
  }) : super.internal();

  final String deviceSerial;

  @override
  FutureOr<void> runNotifierBuild(
    covariant PortsController notifier,
  ) {
    return notifier.build(
      deviceSerial,
    );
  }

  @override
  Override overrideWith(PortsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PortsControllerProvider._internal(
        () => create()..deviceSerial = deviceSerial,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        deviceSerial: deviceSerial,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PortsController, void>
      createElement() {
    return _PortsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PortsControllerProvider &&
        other.deviceSerial == deviceSerial;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, deviceSerial.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PortsControllerRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `deviceSerial` of this provider.
  String get deviceSerial;
}

class _PortsControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PortsController, void>
    with PortsControllerRef {
  _PortsControllerProviderElement(super.provider);

  @override
  String get deviceSerial => (origin as PortsControllerProvider).deviceSerial;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
