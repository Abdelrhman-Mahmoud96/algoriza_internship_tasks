import 'package:rxdart/rxdart.dart';
import 'package:todo_task/core/converters/data_class_converters.dart';
import 'package:todo_task/domain/repository/i_repository.dart';
import 'package:todo_task/data/database/todo_dao.dart';
import 'package:todo_task/domain/entity/todo.dart';

class DatabaseRepository implements IRepository {
  DatabaseRepository({required TodoDao dao}) : _dao = dao;

  final TodoDao _dao;
  // using stream to save the current list
  // of todos help us to update the list
  // immediately without the need to refresh(rebuild) manually the list to show updates
  // 
  // using rxdart BehaviourSubject so we can access the last updated data at anytime
  final _todoStreamController = BehaviorSubject<List<Todo>>.seeded(const []);

  @override
  Future<void> addTodo({required Todo todo}) {
    final currentTodos = [..._todoStreamController.value];
    currentTodos.add(todo);
    _todoStreamController.add(currentTodos);

    return _dao.insertTodo(todoModel: toModel(todo));
  }

  @override
  Future<void> deleteTodo({required Todo todo}) {
    final currentTodos = [..._todoStreamController.value];
    final deletedTodoIndex =
        currentTodos.indexWhere((currentTodo) => currentTodo.id == todo.id);

    currentTodos.removeAt(deletedTodoIndex);
    _todoStreamController.add(currentTodos);

    return _dao.deleteTodo(todoModel: toModel(todo));
  }

  @override
  Stream<List<Todo>> getTodos() async* {
    List<Todo> todosList = await _dao.getTodos().first;
    _todoStreamController.add(todosList);
    yield* _todoStreamController.asBroadcastStream();
  }

  @override
  Future<void> updateTodo({required Todo todo}) {
    final currentTodos = [..._todoStreamController.value];

    final updatedTodoIndex =
        currentTodos.indexWhere((todo) => todo.id == todo.id);

    currentTodos[updatedTodoIndex] = todo;

    _todoStreamController.add(currentTodos);
    return _dao.updateTodo(todoModel: toModel(todo));
  }
}
