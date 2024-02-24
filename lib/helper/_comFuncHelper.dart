import 'package:shared_preferences/shared_preferences.dart';

Future<void> storeToStorageString(String key, String value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}

storeToStorageBoolean(String key, bool value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool(key, value);
}

Future<String?> getFromStorageString(key) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(key);
}
