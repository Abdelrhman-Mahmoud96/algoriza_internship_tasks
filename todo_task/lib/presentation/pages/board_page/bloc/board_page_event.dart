part of 'board_page_bloc.dart';

@freezed
class BoardPageEvent with _$BoardPageEvent {
  const factory BoardPageEvent.tabChanged({required TodosTabFilter tab}) =
      TabChanged;
  const factory BoardPageEvent.loadTodos() = LoadTodos;
  const factory BoardPageEvent.deleteTodo({required Todo todo}) = DeleteTodo;
  const factory BoardPageEvent.compeletedToggled(
      {required Todo todo, required bool isCompleted}) = CompeletedToggled;
  const factory BoardPageEvent.favoriteToggled(
      {required Todo todo, required bool isFavorite}) = FavoriteToggled;
}
