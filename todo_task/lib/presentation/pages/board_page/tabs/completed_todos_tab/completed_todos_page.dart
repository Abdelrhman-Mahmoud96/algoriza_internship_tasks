import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_task/presentation/pages/board_page/bloc/board_page_bloc.dart';
import 'package:todo_task/presentation/pages/board_page/tabs/main_tab_view/main_tab_view.dart';


class CompletedTodosPage extends StatelessWidget {
  const CompletedTodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<BoardPageBloc>().add(const LoadTodos());
    return const MainTabView();
  }
}


