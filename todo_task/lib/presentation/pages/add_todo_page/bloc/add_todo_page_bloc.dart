import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_task/domain/repository/i_repository.dart';
import 'package:todo_task/domain/entity/todo.dart';
import 'package:uuid/uuid.dart';

part 'add_todo_page_event.dart';
part 'add_todo_page_state.dart';
part 'add_todo_page_bloc.freezed.dart';

class AddTodoPageBloc extends Bloc<AddTodoPageEvent, AddTodoPageState> {
  AddTodoPageBloc({required IRepository todoRepository})
      : _todoRepository = todoRepository,
        super(const AddTodoPageState(
          addTodoStatus: AddTodoStatus.initial,
          title: '',
          date: '',
          startTime: '',
          endTime: '',          
          )) {
    on<TitleChanged>(_onTitleChanged);
    on<DateChanged>(_onDateChanged);
    on<StartTimeChanged>(_onStartTimeChanged);
    on<EndTimeChanged>(_onEndTimeChanged);
    on<ReminderChanged>(_onReminderChanged);
    on<TodoSubmitted>(_onTodoSubmitted);  }

  final IRepository _todoRepository;

  void _onTitleChanged(TitleChanged event, Emitter<AddTodoPageState> emit) {
    emit(state.copyWith(title: event.title));
  }

  void _onDateChanged(DateChanged event, Emitter<AddTodoPageState> emit) {
    emit(state.copyWith(date: event.date));
  }

  void _onStartTimeChanged(StartTimeChanged event, Emitter<AddTodoPageState> emit) {
    emit(state.copyWith(startTime: event.startTime));
  }

  void _onEndTimeChanged(EndTimeChanged event, Emitter<AddTodoPageState> emit) {
    emit(state.copyWith(endTime: event.endTime));
  }

  void _onReminderChanged(ReminderChanged event, Emitter<AddTodoPageState> emit) {
    emit(state.copyWith(reminder: event.reminder));
  }
  
  Future<void> _onTodoSubmitted(
      TodoSubmitted event, Emitter<AddTodoPageState> emit) async {
    emit(state.copyWith(addTodoStatus: AddTodoStatus.loading));

    final todo = Todo(id: const Uuid().v4(),).copyWith(
      title: state.title, 
      date: state.date,
      startTime: state.startTime,
      endTime: state.endTime,
      reminder: state.reminder,
      );
    try {
      await _todoRepository.addTodo(todo: todo);     
      emit(state.copyWith(addTodoStatus: AddTodoStatus.success));
    } catch (error) {
      emit(state.copyWith(
          addTodoStatus: AddTodoStatus.faliure,
          errorMessage: error.toString()));
    }
  }
}
