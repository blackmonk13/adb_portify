import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(380, 480),
    minimumSize: Size(380, 480),
    maximumSize: Size(480, double.infinity),
    center: false,
  );

  windowManager.waitUntilReadyToShow(
    windowOptions,
    () async {
      await windowManager.show();
      await windowManager.focus();
      await windowManager.setTitle("Adb Portify");
    },
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
