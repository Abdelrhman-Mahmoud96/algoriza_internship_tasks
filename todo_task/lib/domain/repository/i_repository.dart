import 'package:todo_task/domain/entity/todo.dart';

abstract class IRepository {
  Stream<List<Todo>> getTodos();
  Future<void> addTodo({required Todo todo});
  Future<void> deleteTodo({required Todo todo});
  Future<void> updateTodo({required Todo todo});
}
