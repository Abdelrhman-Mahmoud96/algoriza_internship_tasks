part of 'schedule_page_bloc.dart';

enum SchedulePageStatus { initial, loading, success, failure }

@freezed
class SchedulePageState with _$SchedulePageState {
  const factory SchedulePageState({
    @Default(SchedulePageStatus.initial) SchedulePageStatus? boardPageStatus,
    @Default([]) List<Todo>? todos,
    DateTime? selectedDate,
    @Default('') String? errorMessage,
  }) = _SchedulePageState;

  const SchedulePageState._();

  List<Todo> get filteredTodos => dateFiltredTodos(todos!, selectedDate!);
}

