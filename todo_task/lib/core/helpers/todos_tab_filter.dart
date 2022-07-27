import 'package:todo_task/domain/entity/todo.dart';

enum TodosTabFilter { all, completed, uncompleted, favorite }

// here where we filter todos list depending on TodosTabFilter, and return the right
// list of todos to be showend in the current tab since tabs name and filters are the same
extension TodosTabFilterX on TodosTabFilter {
  bool apply(Todo todo) {
    switch (this) {
      case TodosTabFilter.all:
        return true;

      case TodosTabFilter.completed:
        return todo.isCompleted;

      case TodosTabFilter.uncompleted:
        return !todo.isCompleted;

      case TodosTabFilter.favorite:
        return todo.isFavorite;
    }
  }

  Iterable<Todo> applyToAll(Iterable<Todo> todos) => todos.where(apply);
}
