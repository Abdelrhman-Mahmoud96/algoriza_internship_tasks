import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/domain/entity/todo.dart';
import 'package:todo_task/theme/colors.dart';

class ScheduleTodoListTile extends StatelessWidget {
  const ScheduleTodoListTile({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final Todo? todo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.r),
      child: Material(
        color: TodoColors.todoPurple,
        elevation: 10,
        child: ListTile(
            title: Text(
              '${todo!.startTime} - ${todo!.endTime}',
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: TodoColors.todoPrimaryWhite,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold,               
              ),
            ),

            subtitle: Text(
              todo!.title!,
              style: const TextStyle(color: TodoColors.todoPrimaryWhite),
              ),

            //is favorite checkbox
            trailing: todo!.isCompleted
                ? const Icon(
                    Icons.check_circle_rounded,
                    color: TodoColors.todoPrimaryWhite,
                  )
                : const Icon(
                    Icons.circle_outlined,
                    color: TodoColors.todoPrimaryWhite,
                  )),
      ),
    );
  }
}
