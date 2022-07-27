import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel {
  const TodoModel(
      {required this.id,
      required this.title,
      required this.date,
      required this.startTime,
      required this.endTime,
      required this.reminder,
      required this.isCompleted,
      required this.isFavorite});

  final String id;
  final String title;
  final String date;
  final String startTime;
  final String endTime;
  final String reminder;
  final int isCompleted;
  final int isFavorite;

  static TodoModel fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}
