part of 'add_todo_page_bloc.dart';

@freezed
class AddTodoPageEvent with _$AddTodoPageEvent {
  const factory AddTodoPageEvent.titleChanged({required String title}) = TitleChanged;
  const factory AddTodoPageEvent.dateChanged({required String date}) = DateChanged;
  const factory AddTodoPageEvent.startTimeChanged({required String startTime}) = StartTimeChanged;
  const factory AddTodoPageEvent.endTimeChanged({required String endTime}) = EndTimeChanged;
  const factory AddTodoPageEvent.reminderChanged({required String reminder}) = ReminderChanged;
  const factory AddTodoPageEvent.todoSubmitted() = TodoSubmitted;  
}
