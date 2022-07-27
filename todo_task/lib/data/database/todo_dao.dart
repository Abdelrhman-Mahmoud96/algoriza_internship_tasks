import 'dart:async';
import 'package:todo_task/core/converters/data_class_converters.dart';
import 'package:todo_task/core/converters/interfaces/i_database_provider.dart';
import 'package:todo_task/data/database/constants.dart';
import 'package:todo_task/domain/entity/todo.dart';
import 'package:todo_task/data/model/todo_model.dart';

class TodoDao {
  TodoDao({
    required IDatabaseProvider todoDatabaseProvider,
  }) : _todoDatabaseProvider = todoDatabaseProvider;

  final IDatabaseProvider _todoDatabaseProvider;

  Stream<List<Todo>> getTodos() async* {
    final todoDatabase = await _todoDatabaseProvider.databaseInstance;

    List<Map<String, dynamic>> todosJson = await todoDatabase.query(kTableName);

    List<Todo> todosList = todosJson.isNotEmpty
        ? todosJson.map((todo) => fromModel(TodoModel.fromJson(todo))).toList()
        : [];
    yield todosList;
  }

  Future<void> insertTodo({required TodoModel todoModel}) async {
    final todoDatabase = await _todoDatabaseProvider.databaseInstance;

    return todoDatabase.insert(
      kTableName,
      todoModel.toJson(),
    );
  }

  Future<void> deleteTodo({required TodoModel todoModel}) async {
    final todoDatabase = await _todoDatabaseProvider.databaseInstance;

    return todoDatabase.delete(
      kTableName,
      where: 'id = ?',
      whereArgs: [todoModel.id],
    );
  }

  Future<void> updateTodo({required TodoModel todoModel}) async {
    final todoDatabase = await _todoDatabaseProvider.databaseInstance;

    return todoDatabase.update(
      kTableName,
      todoModel.toJson(),
      where: 'id = ?',
      whereArgs: [todoModel.id],
    );
  }
}
