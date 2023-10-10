import 'package:adb_portify/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PortsLoading extends StatelessWidget {
  const PortsLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: context.colorScheme.outline.withOpacity(.5),
          highlightColor: context.colorScheme.outline.withOpacity(.3),
          enabled: true,
          child: ListTile(
            title: Container(
              height: 12.0,
              decoration: BoxDecoration(
                color: context.colorScheme.outline.withOpacity(.5),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            subtitle: Container(
              height: 10.0,
              decoration: BoxDecoration(
                color: context.colorScheme.outline.withOpacity(.3),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 6,
    );
  }
}
