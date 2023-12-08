import 'package:flutter/material.dart';
import 'package:test_project_flutter/src/core/res/resources.dart';

@immutable
class CustomProgressIndicator extends StatelessWidget {
  final double? value;

  const CustomProgressIndicator({
    this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CircularProgressIndicator(
        color: AppColors.primaryColor,
        value: value,
      );
}
