import 'package:adb_portify/components/common/error_view.dart';
import 'package:adb_portify/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DevicePropsView extends HookConsumerWidget {
  const DevicePropsView({
    super.key,
    required this.deviceId,
  });
  final String deviceId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDeviceProps = ref.watch(devicePropsProvider(deviceId));
    return Scaffold(
      appBar: AppBar(
        title: Text(asyncDeviceProps.valueOrNull?.length.toString() ?? ""),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          asyncDeviceProps.when(
            data: (data) {
              if (data.isEmpty) {
                return const SliverToBoxAdapter(
                  child: Text("No Devices"),
                );
              }

              return SliverList.separated(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data.elementAt(index);
                  return ListTile(
                    title: Text(item),
                    trailing: Text(index.toString()),
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
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
