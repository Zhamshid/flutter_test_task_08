import 'package:flutter/material.dart';
import 'package:test_project_flutter/src/core/widgets/progress_indicator.dart';

@immutable
class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      const Center(child: CustomProgressIndicator());
}
