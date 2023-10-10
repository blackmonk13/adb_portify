import 'package:adb_portify/components/common/error_view.dart';
import 'package:adb_portify/components/ports_list_view.dart';
import 'package:adb_portify/components/ports_loading.dart';
import 'package:adb_portify/models/deviceinfo.dart';
import 'package:adb_portify/models/portinfo.dart';
import 'package:adb_portify/providers/providers.dart';
import 'package:adb_portify/utils/extensions.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DevicePortsView extends HookConsumerWidget {
  const DevicePortsView({
    super.key,
    required this.deviceInfo,
  });
  final DeviceInfo deviceInfo;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncForwardPorts = ref.watch(
      devicePortsProvider(deviceInfo.serial, false),
    );
    final asyncReversePorts = ref.watch(
      devicePortsProvider(deviceInfo.serial, true),
    );

    final tabController = useTabController(initialLength: 2);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            actions: [
              IconButton(
                onPressed: () {
                  ref.invalidate(devicePortsProvider(deviceInfo.serial, false));
                  ref.invalidate(devicePortsProvider(deviceInfo.serial, true));
                },
                icon: const Icon(
                  FluentIcons.arrow_clockwise_24_regular,
                ),
              ),
            ],
            title: Hero(
              tag: deviceInfo.serial,
              child: Text(
                deviceInfo.product ?? deviceInfo.model ?? deviceInfo.serial,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            bottom: TabBar(
              tabs: const [
                Tab(
                  text: "Forward",
                ),
                Tab(
                  text: "Reverse",
                ),
              ],
              controller: tabController,
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: tabController,
              children: [
                AsyncPortsView(
                  asyncPorts: asyncForwardPorts,
                  deviceInfo: deviceInfo,
                ),
                AsyncPortsView(
                  asyncPorts: asyncReversePorts,
                  deviceInfo: deviceInfo,
                  reverse: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AsyncPortsView extends HookConsumerWidget {
  const AsyncPortsView({
    super.key,
    required this.asyncPorts,
    required this.deviceInfo,
    this.reverse = false,
  });

  final AsyncValue<List<PortInfo>> asyncPorts;
  final DeviceInfo deviceInfo;
  final bool reverse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return asyncPorts.when(
      data: (portsList) {
        return PortsListView(
          deviceInfo: deviceInfo,
          portsList: portsList,
          reverse: reverse,
        );
      },
      error: (error, stackTrace) {
        return AsyncErrorView(
          error: error,
          stackTrace: stackTrace,
        );
      },
      loading: () => const PortsLoading(),
    );
  }
}
