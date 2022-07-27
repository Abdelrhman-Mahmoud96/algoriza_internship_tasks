import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


class Todo extends Equatable {
  final String id;
  final String? title;
  final String? date;
  final String? startTime;
  final String? endTime;
  final String? reminder;
  final bool isCompleted;
  final bool isFavorite;

  const Todo({
    required this.id,
    this.title,
    this.date,
    this.startTime,
    this.endTime,
    this.reminder,
    this.isCompleted = false,
    this.isFavorite = false,
  });

  Todo copyWith(
      {String? id,
      String? title,
      String? date,
      String? startTime,
      String? endTime,
      String? reminder,
      bool? isCompleted,
      bool? isFavorite}) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      date: date ?? this.date,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      reminder: reminder ?? this.reminder,
      isFavorite: isFavorite ?? this.isFavorite,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  List<Object?> get props =>
      [id, title, date, startTime, endTime, reminder, isCompleted, isFavorite];
}
