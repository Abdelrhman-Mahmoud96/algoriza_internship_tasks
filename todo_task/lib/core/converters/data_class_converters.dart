import 'package:todo_task/core/converters/bool_converters.dart';
import 'package:todo_task/core/converters/interfaces/i_type_converter.dart';
import 'package:todo_task/domain/entity/todo.dart';
import 'package:todo_task/data/model/todo_model.dart';

TodoModel toModel(Todo entity) {
  ITypeConverter boolConverter = DatabaseBoolConverter();

  return TodoModel(
    id: entity.id,
    title: entity.title!,
    date: entity.date!,
    startTime: entity.startTime!,
    endTime: entity.endTime!,
    reminder: entity.reminder!,
    isCompleted: boolConverter.encode(data: entity.isCompleted),
    isFavorite: boolConverter.encode(data: entity.isFavorite),
  );
}

Todo fromModel(TodoModel model) {
  ITypeConverter boolConverter = DatabaseBoolConverter();

  return Todo(
    id: model.id,    
    title: model.title,
    date: model.date,
    startTime: model.startTime,
    endTime: model.endTime,
    reminder: model.reminder,
    isCompleted: boolConverter.decode(
      data: model.isCompleted,
    ),
    isFavorite: boolConverter.decode(
      data: model.isFavorite,
    ),
  );
}
