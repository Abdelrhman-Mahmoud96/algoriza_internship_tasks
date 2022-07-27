import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_task/core/converters/interfaces/i_type_converter.dart';

class DatabaseTimeOfDayConverter implements ITypeConverter<TimeOfDay, String> {
  @override
  TimeOfDay decode({required String data}) {
    final format = DateFormat.jm(); //"5:00 PM"
    return TimeOfDay.fromDateTime(format.parse(data));
  }

  @override
  String encode({required TimeOfDay data, String? formate}) {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day, data.hour, data.minute);
    final format = DateFormat.jm();
    return format.format(date);
  }
}
