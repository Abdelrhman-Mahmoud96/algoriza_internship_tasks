import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_task/core/helpers/filter_to_string_converter.dart';
import 'package:todo_task/core/helpers/todos_tab_filter.dart';
import 'package:todo_task/presentation/notifications/todo_notification_utils.dart';
import 'package:todo_task/presentation/pages/board_page/bloc/board_page_bloc.dart';
import 'package:todo_task/presentation/pages/board_page/widgets/no_todos_view.dart';
import 'package:todo_task/presentation/pages/board_page/widgets/todos_list_tile.dart';
import 'package:todo_task/theme/colors.dart';

// the main view for all tabs, since all of them have the same implmentations,
// only certin todos will show depending the tab and we handle that using BoardPageBloc
class MainTabView extends StatelessWidget {
  const MainTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<BoardPageBloc, BoardPageState>(
        listenWhen: (previous, current) =>
            previous.boardPageStatus != current.boardPageStatus,
        listener: (context, state) {
          if (state.boardPageStatus == BoardPageStatus.failure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(
                  content: Text('failed to load your todos'),
                ),
              );
          }
        },
        child: BlocBuilder<BoardPageBloc, BoardPageState>(
          builder: (context, state) {
            if (state.boardPageStatus == BoardPageStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: TodoColors.todoPurple,
                ),
              );
            } else if (state.boardPageStatus == BoardPageStatus.success) {
              if (state.filteredTodos.isEmpty) {
                return NoTodosView(
                    caption: state.todosTabFilter == TodosTabFilter.all
                        ? 'No Todos Found yet'
                        : 'No ${tabFilterNameToString(state.todosTabFilter!)} Todos Found yet');
              } 
              else {
                final todos = state.filteredTodos.toList();                
                return Scrollbar(
                  thumbVisibility: true,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      final todo = todos[index];

                      // creating scheduled notification for the each todo,
                      // if todo date and time is not passed yet
                      createReminderNotification(todo);

                      // swiping for deleting the todo
                      return TodoListTile(
                        todo: todo,
                        onDismissed: (_) {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                content: Text('${todo.title} deleted!'),
                              ),
                            );
                
                          context
                              .read<BoardPageBloc>()
                              .add(DeleteTodo(todo: todo));
                        },
                        onToggleCompleted: (value) {
                          context.read<BoardPageBloc>().add(CompeletedToggled(
                              todo: todo, isCompleted: value));
                        },
                        onToggleFavorite: (value) {
                          context.read<BoardPageBloc>().add(
                              FavoriteToggled(todo: todo, isFavorite: value));
                        },
                      );
                    },
                  ),
                );
              }
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
