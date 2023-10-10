import 'package:adb_portify/models/deviceinfo.dart';
import 'package:adb_portify/utils/extensions.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'device_ports_view.dart';

class DeviceTile extends StatelessWidget {
  const DeviceTile({
    super.key,
    required this.data,
  });
  final DeviceInfo data;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            routeTo(
              page: DevicePortsView(
                deviceInfo: data,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridTile(
            footer: Hero(
              tag: data.serial,
              child: Text(
                data.product ?? data.model ?? data.serial,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            child: const Icon(
              FluentIcons.phone_tablet_24_regular,
              size: 56,
            ),
          ),
        ),
      ),
    );
  }
}
