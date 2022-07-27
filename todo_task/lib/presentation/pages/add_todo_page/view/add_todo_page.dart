import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/domain/repository/i_repository.dart';
import 'package:todo_task/presentation/pages/add_todo_page/bloc/add_todo_page_bloc.dart';
import 'package:todo_task/presentation/pages/add_todo_page/widgets/todo_custom_form.dart';
import 'package:todo_task/theme/colors.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddTodoPageBloc>(
      create: (context) => AddTodoPageBloc(
        todoRepository: context.read<IRepository>(),
      ),
      child: AddTodoView(),
    );
  }
}

class AddTodoView extends StatelessWidget {
  AddTodoView({Key? key}) : super(key: key);

  final _formFieldKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AddTodoPageBloc>().state;

    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Add Todo'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(25.h),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 2.0,
                  color: Colors.grey[350]!,
                ),
              ],
            ),
          ),
        ),
        body: BlocListener<AddTodoPageBloc, AddTodoPageState>(
          listenWhen: (previous, current) =>
              previous.addTodoStatus != current.addTodoStatus &&
              current.addTodoStatus == AddTodoStatus.success,
          listener: (context, state) {
            Navigator.of(context).pop();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                // form
                TodoForm(formStateKey: _formFieldKey)
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: 'add_todo_fab',
          child: const Icon(
            Icons.save_as_outlined,
            color: TodoColors.todoPrimaryWhite,
          ),
          onPressed: state.addTodoStatus.isLoadingOrSuccess
              ? null
              : () {
                  if (_formFieldKey.currentState!.validate()) {
                    context.read<AddTodoPageBloc>().add(const TodoSubmitted());

                    dateController.clear();
                    startTimeController.clear();
                    endTimeController.clear();
                  } else {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                            content: Text('all field must be valid')),
                      );
                  }
                },
        ),
      ),
    );
  }
}
