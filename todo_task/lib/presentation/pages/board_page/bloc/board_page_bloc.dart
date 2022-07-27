import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_task/domain/repository/i_repository.dart';
import 'package:todo_task/domain/entity/todo.dart';
import 'package:todo_task/core/helpers/todos_tab_filter.dart';

part 'board_page_event.dart';
part 'board_page_state.dart';
part 'board_page_bloc.freezed.dart';

class BoardPageBloc extends Bloc<BoardPageEvent, BoardPageState> {
  BoardPageBloc({required IRepository databaseRepository})
      : _databaseRepository = databaseRepository,
        super(const BoardPageState()) {
    on<TabChanged>(_onTabChanged);
    on<LoadTodos>(_onLoadTodos);
    on<DeleteTodo>(_onDeleteTodos);
    on<CompeletedToggled>(_onCompeletedToggled);
    on<FavoriteToggled>(_onFavoriteToggled);
  }

  final IRepository _databaseRepository;

  void _onTabChanged(TabChanged event, Emitter<BoardPageState> emit) {
    emit(state.copyWith(todosTabFilter: event.tab));
  }

  Future<void> _onLoadTodos(
      LoadTodos event, Emitter<BoardPageState> emit) async {
    emit(state.copyWith(boardPageStatus: BoardPageStatus.loading));

    await emit.forEach<List<Todo>>(_databaseRepository.getTodos(),
        onData: (todos) => state.copyWith(
            boardPageStatus: BoardPageStatus.success, todos: todos),
        onError: (error, stacktrace) => state.copyWith(
            boardPageStatus: BoardPageStatus.failure,
            errorMessage: error.toString()));
  }

  Future<void> _onDeleteTodos(
      DeleteTodo event, Emitter<BoardPageState> emit) async {
    try {
      await _databaseRepository.deleteTodo(todo: event.todo);
    } catch (error) {
      state.copyWith(
          boardPageStatus: BoardPageStatus.failure,
          errorMessage: error.toString());
    }
  }

  Future<void> _onCompeletedToggled(
      CompeletedToggled event, Emitter<BoardPageState> emit) async {
    final updatedTodo = event.todo.copyWith(isCompleted: event.isCompleted);

    try {
      await _databaseRepository.updateTodo(todo: updatedTodo);
    } catch (error) {
      state.copyWith(
          boardPageStatus: BoardPageStatus.failure,
          errorMessage: error.toString());
    }
  }

  Future<void> _onFavoriteToggled(
      FavoriteToggled event, Emitter<BoardPageState> emit) async {
    final updatedTodo = event.todo.copyWith(isFavorite: event.isFavorite);

    try {
      await _databaseRepository.updateTodo(todo: updatedTodo);
    } catch (error) {
      state.copyWith(
          boardPageStatus: BoardPageStatus.failure,
          errorMessage: error.toString());
    }
  }
}
