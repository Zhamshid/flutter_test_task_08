import 'package:flutter/material.dart';
import 'package:test_project_flutter/src/core/extensions/context.dart';
import 'package:test_project_flutter/src/core/res/resources.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? initialValue;
  final TextEditingController? controller;
  final Function(String value)? onChanged;
  const CustomTextField({
    super.key,
    this.hintText,
    this.initialValue,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.bgContentColor,
      ),
      child: TextFormField(
        onChanged: onChanged,
        initialValue: initialValue,
        controller: controller,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: context.theme.textTheme.titleMedium?.copyWith(
            color: AppColors.grey2Color,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          hoverColor: AppColors.bgContentColor,
        ),
      ),
    );
  }
}
