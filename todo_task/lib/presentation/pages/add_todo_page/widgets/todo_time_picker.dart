import 'package:flutter/material.dart';
import 'package:todo_task/core/converters/interfaces/i_type_converter.dart';
import 'package:todo_task/core/converters/time_converter.dart';
import 'package:todo_task/theme/colors.dart';

Future<String?> todoTimePicker(
    BuildContext context, String? initialValue) async {
  ITypeConverter timeConverter = DatabaseTimeOfDayConverter();

  final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.light(
              primary: TodoColors.todoPrimaryWhite,
              onPrimary: TodoColors.todoPrimaryWhite,
              surface: TodoColors.todoPurple,
              onSurface: TodoColors.todoPrimaryWhite,
            ),
          ),
          child: child!,
        );
      });
  if (time != null) {
    return timeConverter.encode(data: time);
  }
  return null;
}
