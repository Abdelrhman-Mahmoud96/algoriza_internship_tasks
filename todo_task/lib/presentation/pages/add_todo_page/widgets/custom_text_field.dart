import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.textFieldKey,
    required this.hint,
    required this.validator,
    required this.label,
    this.textController,
    this.obscureText = false,
    this.keyboardInputType,
    this.onChanged,
    this.onTap,    
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = false,
    this.maxLines = 1,
  }) : super(key: textFieldKey);

  final Key textFieldKey;
  final String hint;
  final bool obscureText;
  final int maxLines;
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? enabled;
  final TextInputType? keyboardInputType;
  final FormFieldValidator validator;
  final ValueChanged<String?>? onChanged;
  final VoidCallback? onTap;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(4.r),
            child: Text(
              label,
              style: const TextStyle(color: TodoColors.todoPurple),
            ),
          ),
          TextFormField(
            key: key,
            controller: textController,
            style: const TextStyle(color: TodoColors.todoPurple),
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
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
            keyboardType: keyboardInputType,
            obscureText: obscureText,
            enabled: enabled,
            onChanged: onChanged,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
