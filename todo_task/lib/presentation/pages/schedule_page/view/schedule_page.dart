import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:todo_task/core/converters/date_converter.dart';
import 'package:todo_task/core/converters/interfaces/i_type_converter.dart';
import 'package:todo_task/core/helpers/date_generator.dart';
import 'package:todo_task/domain/repository/i_repository.dart';
import 'package:todo_task/presentation/pages/board_page/widgets/no_todos_view.dart';
import 'package:todo_task/presentation/pages/schedule_page/bloc/schedule_page_bloc.dart';
import 'package:todo_task/presentation/pages/schedule_page/widgets/schedule_todo_list_tile.dart';
import 'package:todo_task/theme/colors.dart';

class SchedulePage extends StatelessWidget {
  SchedulePage({Key? key}) : super(key: key);

  final ITypeConverter dateTypeConverter = DatabaseDateTimeConverter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SchedulePageBloc>(
      create: (context) => SchedulePageBloc(
        databaseRepository: context.read<IRepository>(),
        typeConverter: dateTypeConverter,
      )..add(const LoadTodos()),
      child: const ScheduleView(),
    );
  }
}

class ScheduleView extends StatelessWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedDateTab =
        context.select((SchedulePageBloc bloc) => bloc.state.selectedDate);

    final initialIndex =
        dateData.indexWhere((date) => date.isAtSameMomentAs(selectedDateTab!));

    final currentDate = dateData[initialIndex];
    final dayName = DateFormat('EEEE').format(currentDate);
    final dateText = DateFormat('yMMMd').format(currentDate);

    return DefaultTabController(
        length: dateTabs.length,
        initialIndex: initialIndex,
        child: Builder(builder: (BuildContext context) {
          final tabController = DefaultTabController.of(context);
          tabController?.index = initialIndex;
          tabController?.addListener(
            () {
              context.read<SchedulePageBloc>().add(
                  DateTabChanged(selectedDate: dateData[tabController.index]));
            },
          );
          return Scaffold(
            appBar: AppBar(
              title: const Text('Schedule'),
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
                      tabs: dateTabs,
                      isScrollable: true,
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                      indicatorColor: TodoColors.todoPurple,
                      indicatorWeight: 4,
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
            body: BlocListener<SchedulePageBloc, SchedulePageState>(
              listenWhen: (previous, current) =>
                  previous.boardPageStatus != current.boardPageStatus,
              listener: (context, state) {
                if (state.boardPageStatus == SchedulePageStatus.failure) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text('failed to load your todos'),
                      ),
                    );
                }
              },
              child: BlocBuilder<SchedulePageBloc, SchedulePageState>(
                builder: (context, state) {
                  if (state.boardPageStatus == SchedulePageStatus.loading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: TodoColors.todoPurple,
                      ),
                    );
                  } else if (state.boardPageStatus ==
                      SchedulePageStatus.success) {
                    if (state.filteredTodos.isEmpty) {
                      return const NoTodosView(
                          caption: 'No Todos Avalible at this Date');
                    } else {
                      final todos = state.filteredTodos.toList();

                      return Column(
                        children: [
                          // current day and full date
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [Text(dayName), Text(dateText)],
                            ),
                          ),                         

                          //list of todo in chosen date
                          Expanded(
                            child: Scrollbar(                              
                              thumbVisibility: true,                                                    
                              child: ListView.builder(                                
                                shrinkWrap: true,
                                itemCount: todos.length,
                                itemBuilder: (context, index) {
                                  final todo = todos[index];
                                  return ScheduleTodoListTile(todo: todo);
                                },
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  }
                  return const SizedBox();
                },
              ),
            ),
          );
        }));
  }
}
