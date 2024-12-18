import 'package:flutter/material.dart';
import 'package:veda_components/veda_componenets.dart';

class VedaTextField extends StatefulWidget {
  final TextEditingController controller;

  final bool isPassword;
  final VoidCallback? onPressed;

  final FormFieldValidator<String>? validator;
  const VedaTextField({
    super.key,
    required this.controller,
    this.isPassword = false,
    this.onPressed,
    this.validator,
  });

  @override
  State<VedaTextField> createState() => _VedaTextFieldState();
}

class _VedaTextFieldState extends State<VedaTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textTheme(context).bodySmall!.copyWith(color: Colors.white),
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword ? true : false,
      onTap: widget.onPressed,
      decoration: InputDecoration(
          isDense: true,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.white,
            ),
          ),
          focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.white,
            ),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.white,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.white,
            ),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.white,
            ),
          ),
          errorStyle: textTheme(context).bodyMedium?.copyWith(fontSize: 8)),
      cursorColor: Colors.white,
    );
  }
}
