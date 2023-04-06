// ignore_for_file: depend_on_referenced_packages

import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

extension EDateTime on DateTime {
  String formatDateTime([String format = 'yyyy-MM-dd HH:mm:ss']) {
    final formatter = DateFormat(format);
    return formatter.format(this);
  }

  String formatDatePtBr([String format = 'dd/MM/yyyy']) {
    final formatter = DateFormat(format);
    return formatter.format(this);
  }

  String formatDateTimeMiliseconds(
      [String format = 'yyyy-MM-ddTHH:mm:ss.ssssss']) {
    final formatter = DateFormat(format);
    return formatter.format(this);
  }

  String formatDateTimePtBr([String format = 'dd/MM/yyyy HH:mm:ss']) {
    final formatter = DateFormat(format);
    return formatter.format(this);
  }

  String formatMinuteSecond() {
    return formatDateTimePtBr('mm:ss');
  }

  String formatDayMonth([String format = 'dd/MM']) {
    final formatter = DateFormat(format);
    return formatter.format(this);
  }
}
