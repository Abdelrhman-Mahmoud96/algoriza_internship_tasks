import 'package:flutter/material.dart';
import 'package:todo_task/core/converters/date_converter.dart';
import 'package:todo_task/core/converters/interfaces/i_type_converter.dart';
import 'package:todo_task/data/database/constants.dart';
import 'package:todo_task/theme/colors.dart';

Future<String?> todoDatePicker(
    BuildContext context, String? initialValue) async {
  ITypeConverter dateConverter = DatabaseDateTimeConverter();
  // final decodedInitialValue = dateConverter.decode(data: initialValue);

  final date = await showDatePicker(
      context: context,
      initialDate: DateUtils.dateOnly(DateTime.now()),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.light(
              primary: TodoColors.todoPurple,
              onPrimary: TodoColors.todoPrimaryWhite,
              onSecondary: TodoColors.todoPrimaryWhite,
              surface: TodoColors.todoPurple,
              onSurface: TodoColors.todoPurple,
            ),
            dialogBackgroundColor: TodoColors.todoPrimaryWhite,
          ),
          child: child!,
        );
      });
  if (date != null) {
    return dateConverter.encode(data: date, formate: kDateFormat);
  }
  return null;
}
