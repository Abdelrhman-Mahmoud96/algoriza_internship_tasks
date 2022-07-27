import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List<DateTime> dateData = List.generate(10, (index) {
  final now = DateTime.now();
  final date = DateTime(now.year, now.month, now.day + index);
  return DateUtils.dateOnly(date);
});

 List<Tab> dateTabs = List.generate(10, (index) {
    final date = dateData[index];
    final dayName = DateFormat('EEE').format(date);
    final dayOfMonth = DateFormat('d').format(date);
    return Tab(
      child: Column(children: [Text(dayName), Text(dayOfMonth)]),
    );
  });
