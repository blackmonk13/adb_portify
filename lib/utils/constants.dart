import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

const eulaPrefsKey = "eula_accepted";
const adbPathPrefsKey = "adb_path";

final RegExp deviceRegex = RegExp(r'^\S+\s+\w+$');
final RegExp adbDevicesRegex = RegExp(r'^(?<serial>\S+)\s+(?<state>\S+)(?<info>.*)$');
final RegExp adbListRegex = RegExp(r'^(?<serial>\S+) (?<local>\S+) (?<remote>\S+)$');

final RegExp infoRegex = RegExp(r'product:(\S+)\s+model:(\S+)\s+device:(\S+)\s+transport_id:(\S+)');
