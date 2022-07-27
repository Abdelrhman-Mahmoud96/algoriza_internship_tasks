import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/domain/entity/todo.dart';
import 'package:todo_task/theme/colors.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({
    Key? key,
    required this.todo,
    required this.onDismissed,
    required this.onToggleCompleted,
    required this.onToggleFavorite,
  }) : super(key: key);

  final Todo? todo;
  final DismissDirectionCallback? onDismissed;
  // final VoidCallback? onTap;
  final ValueChanged<bool> onToggleCompleted;
  final ValueChanged<bool> onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.r),
      child: Dismissible(
        key: Key('note_list_dismissible_${todo!.id}'),
        onDismissed: onDismissed,
        direction: DismissDirection.endToStart,
        
        // dismissed background that show when we swipte the tile
        background: Container(
            color: Theme.of(context).colorScheme.error,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const Text(
              'Delete?',
              style: TextStyle(color: TodoColors.todoPrimaryWhite),
            ),
        ),

        child: Material(
          color: TodoColors.todoPurple,
          elevation: 10,
          child: ListTile(            
            title: Text(
              todo!.title!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: TodoColors.todoPrimaryWhite,
                overflow: TextOverflow.ellipsis,
                fontWeight: todo!.isCompleted ? null :FontWeight.bold,
                decoration: todo!.isCompleted ? TextDecoration.lineThrough : null,
              ),
            ),

            // is completed checkbox
            leading: Checkbox(
              value: todo!.isCompleted,              
              checkColor: TodoColors.todoPurple,
              onChanged: (value) => onToggleCompleted(value!),
            ),            

            //is favorite checkbox
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                // checkbox label
                // const Text(
                //   'favorite:',
                //   style: TextStyle(color: TodoColors.todoPrimaryWhite, fontStyle: FontStyle.italic),
                // ),

                // custom checkbox with star icon
                CustomCheckBox(
                  value: todo!.isFavorite,
                  checkedIcon: Icons.star,
                  checkedIconColor: Colors.amber,
                  uncheckedIcon: Icons.star_border,
                  uncheckedIconColor: TodoColors.todoPrimaryWhite,
                  checkedFillColor: TodoColors.todoPurple,
                  uncheckedFillColor: TodoColors.todoPurple,
                  borderColor: TodoColors.todoPurple,
                  borderRadius: 0.0,
                  checkBoxSize: 21,
                  onChanged: (value) => onToggleFavorite(value),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
