part of 'add_todo_page_bloc.dart';

enum AddTodoStatus { initial, loading, success, faliure }

@freezed
class AddTodoPageState with _$AddTodoPageState {
  const factory AddTodoPageState({
    required AddTodoStatus addTodoStatus,
    String? title,
    String? date,
    String? startTime,
    String? endTime,
    String? reminder,
    String? errorMessage,
  }) = _AddTodoPageState;

  const AddTodoPageState._();  
}

extension AddEditStatusX on AddTodoStatus {
  bool get isLoadingOrSuccess => [
        AddTodoStatus.loading,
        AddTodoStatus.success,
      ].contains(this);
}
