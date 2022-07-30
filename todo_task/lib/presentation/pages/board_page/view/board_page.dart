import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/core/helpers/todos_tab_filter.dart';
import 'package:todo_task/core/route/route_generator.dart';
import 'package:todo_task/domain/repository/i_repository.dart';
import 'package:todo_task/presentation/notifications/todo_notification_utils.dart';
import 'package:todo_task/presentation/pages/board_page/bloc/board_page_bloc.dart';
import 'package:todo_task/presentation/pages/board_page/tabs/all_todos_tab/all_todos_page.dart';
import 'package:todo_task/presentation/pages/board_page/tabs/completed_todos_tab/completed_todos_page.dart';
import 'package:todo_task/presentation/pages/board_page/tabs/favorite_todos_tab/favorite_todos_page.dart';
import 'package:todo_task/presentation/pages/board_page/tabs/uncompleted_todos_tab/uncompleted_todos_page.dart';
import 'package:todo_task/theme/colors.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({Key? key,}) : super(key: key);
  
  @override
  Widget build(BuildContext context) { 
     // check notification permission and create a dialog
    // to get user permission if not granted already 
    notificationPermissionRequest(context: context);  
    
    return BlocProvider<BoardPageBloc>(
      create: (context) =>
          BoardPageBloc(databaseRepository: context.read<IRepository>()),
      child: const BoardView(),
    );
  }
}

class BoardView extends StatelessWidget {
  const BoardView({Key? key}) : super(key: key);

  final List<Tab> _boardTabs = const [
    Tab(text: 'All'),
    Tab(text: 'Completed'),
    Tab(text: 'Uncompleted'),
    Tab(text: 'Favorite'),
  ];

  @override
  Widget build(BuildContext context) {
    // get the current selected tab from bloc
    final selectedTab = context
    .select((BoardPageBloc bloc) => bloc.state.todosTabFilter);

    return DefaultTabController(
        length: _boardTabs.length,
        initialIndex: selectedTab!.index,
        child: Builder(builder: (BuildContext context) {
          final tabController = DefaultTabController.of(context);
          tabController?.index = selectedTab.index;
          tabController?.addListener(() {
            // changing the tab will send the tab name to the bloc and
            // the todos will be filtred regarded to that tab
            // 
            // head to BoardPageState for more info
            context.read<BoardPageBloc>().add(
                TabChanged(tab: TodosTabFilter.values[tabController.index]));
          });

          return Scaffold(
            appBar: AppBar(
              title: const Text('Board'),
              actions: [
                // navigating to notifications page to list pending notifications (not implmented yet)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notification_important_outlined,
                      color: TodoColors.todoPurple,
                      size: 30,
                    ),
                    onPressed: () {
                       ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                            content: Text('not implemented yet!')),
                      );
                  
                    },
                  ),
                ),

                // naviagating to schedule page
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: IconButton(
                    icon: const Icon(
                      Icons.calendar_month,
                      color: TodoColors.todoPurple,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RouteGenerator.schedulePage);
                    },
                  ),
                ),

                // naviagating to add todo page
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: IconButton(
                    icon: const Icon(
                      Icons.note_add_outlined,
                      color: TodoColors.todoPurple,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(RouteGenerator.addTodoPage);
                    },
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(75.h),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 2.0,
                      color: Colors.grey[350]!,
                    ),
                    TabBar(
                      tabs: _boardTabs,
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal: 15.w),
                      indicatorColor: TodoColors.todoPurple,
                      indicatorWeight: 6,
                      labelColor: TodoColors.todoPurple,
                      unselectedLabelColor: TodoColors.todoSoftPurple,
                    ),
                    Container(
                      width: double.infinity,
                      height: 2.0,
                      color: Colors.grey[350]!,
                    ),
                  ],
                ),
              ),
            ),
            body: const TabBarView(children: [
              AllTodosPage(),
              CompletedTodosPage(),
              UncompletedTodosPage(),
              FavoriteTodosPage(),
            ]),
            
          );
        }));
  }
}
