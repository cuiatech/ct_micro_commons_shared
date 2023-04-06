// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

extension EString on String {
  String get capitalize => '${this[0].toUpperCase()}${substring(1)}';

  String justTheNumbers() {
    return replaceAll(RegExp("[^0-9]"), "");
  }

  DateTime toDateTime() {
    return DateFormat("yyyy-MM-ddThh:mm:ss").parse(this);
  }

  String removeDiacritics() {
    var diacritics =
        'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
    var nonDiacritics =
        'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

    return splitMapJoin(
      '',
      onNonMatch: (char) => char.isNotEmpty && diacritics.contains(char)
          ? nonDiacritics[diacritics.indexOf(char)]
          : char,
    );
  }

  String currency({String locale = 'pt_BR', symbol = 'R\$'}) {
    try {
      NumberFormat format = NumberFormat.currency(
        locale: locale,
        symbol: symbol,
      );
      return format.format(num.parse(this));
    } catch (e) {
      return this;
    }
  }

  String justUppercaseCharacters() {
    RegExp regex = RegExp(r'[A-Z]');
    return regex.allMatches(this).map((m) => m.group(0)).toList().join('');
  }

  String justLowerCaseCharacters() {
    RegExp regex = RegExp(r'[a-z]');
    return regex.allMatches(this).map((m) => m.group(0)).toList().join('');
  }

  String justSpecialCharacters() {
    RegExp regex = RegExp(r'[@$!%*?&]');
    return regex.allMatches(this).map((m) => m.group(0)).toList().join('');
  }

  String justAlphaNumericCharacters({bool maintainSpaces = false}) {
    RegExp regex =
        maintainSpaces ? RegExp(r'[a-zA-Z0-9 ]') : RegExp(r'[a-zA-Z0-9]');
    return regex.allMatches(this).map((m) => m.group(0)).toList().join('');
  }

  String addCharAtPosition(String char, int position, {bool repeat = false}) {
    if (!repeat) {
      if (length < position) {
        return this;
      }
      var before = substring(0, position);
      var after = substring(position, length);
      return before + char + after;
    } else {
      if (position == 0) {
        return this;
      }
      var buffer = StringBuffer();
      for (var i = 0; i < length; i++) {
        if (i != 0 && i % position == 0) {
          buffer.write(char);
        }
        buffer.write(String.fromCharCode(runes.elementAt(i)));
      }
      return buffer.toString();
    }
  }

  String upperCaseFirstLetter() {
    return '${substring(0, 1).toUpperCase()}${substring(1).toLowerCase()}';
  }

  bool get toBool => toLowerCase() == 'true';

  String toSha256() => sha256.convert(utf8.encode(this)).toString();

  double toCurrencyDouble({String symbol = 'R\$'}) {
    return double.parse(
      replaceAll('.', '').replaceAll(',', '.').replaceAll(symbol, ''),
    );
  }

  bool isNumericOnlyString() {
    if (double.tryParse(this) == null) return false;
    return true;
  }

  bool hasWhitespaces() {
    return indexOf(' ') >= 0;
  }

  String toSnakeCase() {
    RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');
    return replaceAllMapped(exp, (Match m) => ('_${m.group(0)}')).toLowerCase();
  }
}
