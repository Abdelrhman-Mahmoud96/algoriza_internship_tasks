part of 'board_page_bloc.dart';

enum BoardPageStatus { initial, loading, success, failure }

@freezed
class BoardPageState with _$BoardPageState {
  const factory BoardPageState({
    @Default(BoardPageStatus.initial) BoardPageStatus? boardPageStatus,
    @Default([]) List<Todo>? todos,
    @Default(TodosTabFilter.all) TodosTabFilter? todosTabFilter,
    @Default('') String? errorMessage,
  }) = _BoardPageStatus;

  const BoardPageState._();
  // after setting the current tab, ex:completed, we generat a new list
  // with the completed status only and send it as the main list of todos 
  List<Todo> get filteredTodos => todosTabFilter!.applyToAll(todos!).toList();
}

extension BoardPageStatusX on BoardPageStatus {
  bool get isLoadingOrSuccess => [
        BoardPageStatus.loading,
        BoardPageStatus.success,
      ].contains(this);
}
