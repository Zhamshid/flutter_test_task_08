import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_project_flutter/src/core/res/resources.dart';

@sealed
class SnackBarUtil {
  static final GlobalKey<ScaffoldMessengerState> key =
      GlobalKey<ScaffoldMessengerState>();
  SnackBarUtil._();

  /// Показывет ошибки, статусы в приложении
  static void showSnackBar(
      {required BuildContext context,
      required String message,
      bool isError = false}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: AppFonts.manrope,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: isError ? Colors.red : AppColors.primaryColor,
          duration: const Duration(seconds: 2),
        ),
      );
  }
}
