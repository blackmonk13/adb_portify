import 'package:adb_portify/utils/constants.dart';

String? get adbPath {
  final pathname = prefs.getString(adbPathPrefsKey);
  return pathname;
}

Future<bool> setAdbPath(String? newPath) async {
  if (newPath == null) {
    return prefs.remove(adbPathPrefsKey);
  }

  if (newPath.isEmpty) {
    return false;
  }

  return prefs.setString(
    adbPathPrefsKey,
    newPath,
  );
}