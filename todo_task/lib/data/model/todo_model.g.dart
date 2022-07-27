// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => TodoModel(
      id: json['id'] as String,
      title: json['title'] as String,
      date: json['date'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      reminder: json['reminder'] as String,
      isCompleted: json['isCompleted'] as int,
      isFavorite: json['isFavorite'] as int,
    );

Map<String, dynamic> _$TodoModelToJson(TodoModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'reminder': instance.reminder,
      'isCompleted': instance.isCompleted,
      'isFavorite': instance.isFavorite,
    };
