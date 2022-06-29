import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        key: widget.key,
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hint,
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(16),
          ),
          prefixIcon: widget.prefixIcon,
        ),
        controller: widget.controller,
        keyboardType: widget.keyboardInputType,
        obscureText: widget.obscureText,
        onChanged: widget.onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.validator,
      ),
    );
  }
}
