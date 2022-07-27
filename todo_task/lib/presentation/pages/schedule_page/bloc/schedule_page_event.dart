part of 'schedule_page_bloc.dart';

@freezed
class SchedulePageEvent with _$SchedulePageEvent {
  const factory SchedulePageEvent.dateTabChanged({required DateTime selectedDate}) =
      DateTabChanged;
  const factory SchedulePageEvent.loadTodos() = LoadTodos;
  
}
