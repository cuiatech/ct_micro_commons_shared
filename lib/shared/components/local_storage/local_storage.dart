import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class LocalStorage {
  static Future<String?> get(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static Future<bool> set(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(key, value);
  }

  static Future<bool> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove(key);
  }

  static Future<bool> erase() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.clear();
  }
}
