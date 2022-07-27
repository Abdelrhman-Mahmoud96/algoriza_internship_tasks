import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_task/core/converters/interfaces/i_type_converter.dart';
import 'package:todo_task/core/helpers/todo_schedule_filter.dart';
import 'package:todo_task/domain/entity/todo.dart';
import 'package:todo_task/domain/repository/i_repository.dart';

part 'schedule_page_event.dart';
part 'schedule_page_state.dart';
part 'schedule_page_bloc.freezed.dart';

class SchedulePageBloc extends Bloc<SchedulePageEvent, SchedulePageState> {
  SchedulePageBloc(
      {required IRepository databaseRepository, required this.typeConverter})
      : _databaseRepository = databaseRepository,
        super(SchedulePageState(
            selectedDate: DateUtils.dateOnly(DateTime.now()))) {
                  
    on<LoadTodos>(_onLoadTodos);
    on<DateTabChanged>(_onDateTabChanged);
  }

  final ITypeConverter typeConverter;
  final IRepository _databaseRepository;

  Future<void> _onLoadTodos(
      LoadTodos event, Emitter<SchedulePageState> emit) async {
    emit(state.copyWith(boardPageStatus: SchedulePageStatus.loading));

    await emit.forEach<List<Todo>>(_databaseRepository.getTodos(),
        onData: (todos) => state.copyWith(
            boardPageStatus: SchedulePageStatus.success, todos: todos),
        onError: (error, stacktrace) => state.copyWith(
            boardPageStatus: SchedulePageStatus.failure,
            errorMessage: error.toString()));
  }

  void _onDateTabChanged(
      DateTabChanged event, Emitter<SchedulePageState> emit) {
    emit(state.copyWith(selectedDate: event.selectedDate));
  }
}
