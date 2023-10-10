import 'package:adb_portify/components/common/error_view.dart';
import 'package:adb_portify/providers/providers.dart';
import 'package:adb_portify/utils/extensions.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/device_tile.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAdbPath = ref.watch(adbPathProvider);
    return Scaffold(
      body: asyncAdbPath.when(
        data: (data) {
          if (data == null) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text:
                              "It seems ADB is not in your system path and you are yet to select it's location.")
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }
          return const DevicesView();
        },
        error: (error, stackTrace) => AsyncErrorView(
          error: error,
          stackTrace: stackTrace,
        ),
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class DevicesView extends HookConsumerWidget {
  const DevicesView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDevices = ref.watch(adbDevicesProvider);
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          title: const Text("Devices"),
          actions: [
            IconButton(
              onPressed: () {
                ref.invalidate(adbDevicesProvider);
              },
              icon: const Icon(
                FluentIcons.arrow_clockwise_24_regular,
              ),
            ),
          ],
        ),
        asyncDevices.when(
          data: (data) {
            if (data.isEmpty) {
              return const SliverFillRemaining(
                child: Center(
                  child: Text(
                    "Sorry, there are no devices currently connected.",
                  ),
                ),
              );
            }

            return SliverGrid.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final item = data.elementAt(index);
                return DeviceTile(
                  data: item,
                );
              },
            );

            return SliverList.separated(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return DeviceTile(
                  data: data.elementAt(index),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            );
          },
          error: (error, stackTrace) {
            return SliverToBoxAdapter(
              child: AsyncErrorView(
                error: error,
                stackTrace: stackTrace,
              ),
            );
          },
          loading: () {
            return const SliverToBoxAdapter(
              child: LinearProgressIndicator(),
            );
          },
        ),
      ],
    );
  }
}
