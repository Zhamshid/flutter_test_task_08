import 'package:flutter/cupertino.dart';
import 'package:test_project_flutter/src/core/base/view_model.dart';

mixin ViewModelMixin<W extends StatefulWidget, VM extends ViewModel>
    on State<W> {
  /// Геттер для вьюмодели
  ViewModel get viewModel;

  @override
  void initState() {
    viewModel.init();
    super.initState();
  }
}
