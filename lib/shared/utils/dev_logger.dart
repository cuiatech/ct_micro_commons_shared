import 'dart:developer' as developer;

class DevLogger {
  static void message(String message, {String name = ''}) {
    developer.log(message, name: name);
  }

  // Blue text
  static void info(String message, {String name = ''}) {
    developer.log('\x1B[34m$message\x1B[0m', name: name);
  }

  // Green text
  static void success(String message, {String name = ''}) {
    developer.log('\x1B[32m$message\x1B[0m', name: name);
  }

  // Yellow text
  static void warning(String message, {String name = ''}) {
    developer.log('\x1B[33m$message\x1B[0m', name: name);
  }

  // Red text
  static void error(String message, {String name = ''}) {
    developer.log('\x1B[31m$message\x1B[0m', name: name);
  }
}
