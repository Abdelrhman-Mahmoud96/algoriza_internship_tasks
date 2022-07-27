import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task1/theme/colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.textFieldKey,
    required this.label,
    required this.hint,
    this.obscureText = false,
    required this.controller,
    required this.keyboardInputType,
    required this.validator,
    required this.onChanged,
    this.prefixIcon}) : super(key: textFieldKey);

  final Key textFieldKey;
  final String label;
  final String hint;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardInputType;
  final FormFieldValidator validator;
  final ValueChanged<String> onChanged;
  final Widget? prefixIcon;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.key,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2.w, color: TasksColors.primaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.w, color: TasksColors.primaryColor),
          borderRadius: BorderRadius.circular(16.r),
        ),
        prefixIcon: widget.prefixIcon,
      ),
      controller: widget.controller,
      keyboardType: widget.keyboardInputType,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
    );
  }
}
