import 'package:adb_portify/components/ports_dialog.dart';
import 'package:adb_portify/models/deviceinfo.dart';
import 'package:adb_portify/models/portinfo.dart';
import 'package:adb_portify/providers/providers.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PortsListView extends HookConsumerWidget {
  const PortsListView({
    super.key,
    required this.deviceInfo,
    required this.portsList,
    this.reverse = false,
  });
  final DeviceInfo deviceInfo;
  final List<PortInfo> portsList;
  final bool reverse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portsController =
        ref.watch(portsControllerProvider(deviceInfo.serial));

    return Column(
      children: [
        portsController.when(
          data: (data) => const SizedBox.shrink(),
          error: (error, stackTrace) => const SizedBox.shrink(),
          loading: () => const LinearProgressIndicator(),
        ),
        ListTile(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AddPortsDialog(
                  deviceInfo: deviceInfo,
                  reverse: reverse,
                );
              },
            );
          },
          leading: const Icon(FluentIcons.add_24_regular),
          title: const Text('Add Port'),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              final item = portsList.elementAt(index);
              return ListTile(
                leading: const Icon(
                  FluentIcons.plug_connected_24_regular,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item.localPort),
                    const Spacer(),
                    const Icon(
                      FluentIcons.arrow_swap_24_regular,
                    ),
                    const Spacer(),
                    Text(item.remotePort),
                  ],
                ),
                subtitle: Text(
                  item.protocol.toUpperCase(),
                ),
                trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return PortOptionsDialog(
                          portInfo: item,
                          reverse: reverse,
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    FluentIcons.more_vertical_24_regular,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: portsList.length,
          ),
        ),
      ],
    );
  }
}

class PortOptionsDialog extends HookConsumerWidget {
  const PortOptionsDialog({
    super.key,
    required this.portInfo,
    required this.reverse,
  });
  final PortInfo portInfo;
  final bool reverse;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMounted = useIsMounted();
    return Dialog(
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            onTap: () async {
              await ref
                  .read(portsControllerProvider(portInfo.serial).notifier)
                  .removePort(portInfo.localPort, reverse: reverse);
              ref.invalidate(
                devicePortsProvider(portInfo.serial, reverse),
              );
              if (isMounted()) {
                // ignore: use_build_context_synchronously
                Navigator.of(context).maybePop();
              }
            },
            title: const Text(
              "Remove",
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            onTap: () async {
              await ref
                  .read(portsControllerProvider(portInfo.serial).notifier)
                  .removeAll(reverse: reverse);
              ref.invalidate(
                devicePortsProvider(portInfo.serial, reverse),
              );
              if (isMounted()) {
                // ignore: use_build_context_synchronously
                Navigator.of(context).maybePop();
              }
            },
            title: const Text(
              "Remove All",
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).maybePop();
            },
            title: const Text(
              "Cancel",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
