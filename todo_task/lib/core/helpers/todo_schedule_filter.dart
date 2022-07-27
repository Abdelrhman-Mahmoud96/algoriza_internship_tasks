import 'package:todo_task/core/converters/date_converter.dart';
import 'package:todo_task/core/converters/interfaces/i_type_converter.dart';
import 'package:todo_task/domain/entity/todo.dart';

List<Todo> dateFiltredTodos(List<Todo> todos, DateTime selectedDate) {
  final ITypeConverter dateConverter = DatabaseDateTimeConverter();
  return todos.where((todo) {
    final DateTime todoDate = dateConverter.decode(data: todo.date);
    return todoDate.isAtSameMomentAs(selectedDate);
  }).toList();
}
