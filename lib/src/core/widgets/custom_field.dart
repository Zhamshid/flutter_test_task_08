import 'package:flutter/material.dart';
import 'package:test_project_flutter/src/core/res/resources.dart';

@immutable
class CustomField extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Color? fillColor;

  const CustomField({
    Key? key,
    this.controller,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.fillColor,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        keyboardType: keyboardType ?? TextInputType.visiblePassword,
        cursorColor: AppColors.primaryColor,
        cursorRadius: const Radius.circular(2),
        controller: controller,
        style: const TextStyle(
          fontSize: 16,
          letterSpacing: 0.5,
          color: AppColors.whiteColor,
        ),
        decoration: customInputDecoration(
          labelText: labelText,
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: fillColor,
        ),
        onChanged: onChanged,
      );
}

InputDecoration customInputDecoration({
  String? labelText,
  String? hintText,
  Widget? prefix,
  Widget? prefixIcon,
  Widget? suffixIcon,
  bool showSuffix = false,
  Function? onPressed,
  Color? fillColor,
  TextStyle? labelStyle,
}) =>
    InputDecoration(
      prefix: prefix,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      prefixIconConstraints: const BoxConstraints(),
      prefixStyle: const TextStyle(color: AppColors.primaryColor, fontSize: 16),
      filled: true,
      fillColor: fillColor ?? Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: const Color(0xFFd4d4d4).withOpacity(0.6),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: const Color(0xFFd4d4d4).withOpacity(0.6),
        ),
      ),
      labelText: '$labelText',
      labelStyle: labelStyle ??
          const TextStyle(
            fontSize: 16,
            color: AppColors.primaryColor,
          ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      hintText: '$hintText',
      hintStyle: const TextStyle(
        fontSize: 16,
        letterSpacing: 0.5,
        color: AppColors.primaryColor,
      ),
    );
