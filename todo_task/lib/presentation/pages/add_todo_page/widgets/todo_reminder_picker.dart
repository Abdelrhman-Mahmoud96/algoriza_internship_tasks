import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/theme/colors.dart';

class CustomReminderPicker extends StatelessWidget {
  const CustomReminderPicker({
    Key? key,
    required this.label,
    required this.items,
    required this.onChanged,
    required this.validator,
    required this.currentValue,
    this.hint,
    this.icon,
    this.enabled = false,
  }) : super(key: key);

  final List<String> items;
  final ValueChanged<String?>? onChanged;
  final String? currentValue;
  final FormFieldValidator validator;
  final bool? enabled;
  final String label;
  final String? hint;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // label
          Padding(
            padding: EdgeInsets.all(4.r),
            child: Text(
              label,
              style: const TextStyle(color: TodoColors.todoPurple),
            ),
          ),

          DropdownButtonFormField(
            icon: icon,
            items: items.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(color: TodoColors.todoPurple),
                ),
              );
            }).toList(),
            value: currentValue,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: TodoColors.todoPurple.withOpacity(0.5),
              ),
              border: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2.w, color: TodoColors.todoPurple),
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2.w, color: TodoColors.todoPurple),
                borderRadius: BorderRadius.circular(16.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2.w, color: TodoColors.todoPurple),
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            onChanged: onChanged,
            validator: validator,
          ),
        ]));
  }
}
