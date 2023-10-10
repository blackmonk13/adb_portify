import 'package:adb_portify/models/deviceinfo.dart';
import 'package:adb_portify/providers/providers.dart';
import 'package:adb_portify/utils/extensions.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_use/flutter_use.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddPortsDialog extends HookConsumerWidget {
  const AddPortsDialog({
    super.key,
    required this.deviceInfo,
    required this.reverse,
  });
  final DeviceInfo deviceInfo;
  final bool reverse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localController = useTextEditingController();
    final remoteController = useTextEditingController();
    final protocol = useState('tcp');

    final isMounted = useIsMounted();

    final localValidator = useTextFormValidator<String?>(
      validator: (value) {
        final isValid = RegExp(
                r'^([0-9]|[1-9][0-9]{1,3}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])$')
            .hasMatch(value);
        if (isValid) {
          return null;
        }

        return "Invalid port";
      },
      controller: localController,
      initialValue: null,
    );
    final remoteValidator = useTextFormValidator<String?>(
      validator: (value) {
        final isValid = RegExp(
                r'^([0-9]|[1-9][0-9]{1,3}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])$')
            .hasMatch(value);
        if (isValid) {
          return null;
        }

        return "Invalid port";
      },
      controller: remoteController,
      initialValue: null,
    );

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  reverse ? "Reverse" : "Forward",
                  style: context.textTheme.headlineSmall,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: localController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      errorText: localValidator,
                    ),
                  ),
                ),
                const Icon(
                  FluentIcons.arrow_swap_24_regular,
                ),
                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: remoteController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      errorText: remoteValidator,
                    ),
                  ),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Radio(
            //       value: 'tcp',
            //       groupValue: protocol.value,
            //       onChanged: (value) {
            //         if (value == null) {
            //           return;
            //         }

            //         if (value.isEmpty) {
            //           return;
            //         }
            //         protocol.value = value;
            //       },
            //     ),
            //     const Text('TCP'),
            //     Radio(
            //       value: 'udp',
            //       groupValue: protocol.value,
            //       onChanged: (value) {
            //         if (value == null) {
            //           return;
            //         }

            //         if (value.isEmpty) {
            //           return;
            //         }
            //         protocol.value = value;
            //       },
            //     ),
            //     const Text('UDP'),
            //   ],
            // ),
            const Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).maybePop();
                  },
                  child: const Text(
                    "Cancel",
                  ),
                ),
                TextButton(
                  onPressed: [localValidator, remoteValidator]
                          .every((element) => element == null)
                      ? () async {
                          if (reverse) {
                            await ref
                                .read(portsControllerProvider(deviceInfo.serial)
                                    .notifier)
                                .reversePort(
                                  localController.text,
                                  remoteController.text,
                                  protocol: protocol.value,
                                );
                          } else {
                            await ref
                                .read(portsControllerProvider(deviceInfo.serial)
                                    .notifier)
                                .forwardPort(
                                  localController.text,
                                  remoteController.text,
                                  protocol: protocol.value,
                                );
                          }
                          ref.invalidate(
                              devicePortsProvider(deviceInfo.serial, reverse));
                          if (isMounted()) {
                            // ignore: use_build_context_synchronously
                            Navigator.of(context).maybePop();
                          }
                        }
                      : null,
                  child: Text(
                    reverse ? "Reverse" : "Forward",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
