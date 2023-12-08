import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project_flutter/src/core/extensions/context.dart';
import 'package:test_project_flutter/src/core/utils/snackbar_util.dart';
import 'package:test_project_flutter/src/core/widgets/column_spacer.dart';
import 'package:test_project_flutter/src/core/widgets/custom_button.dart';
import 'package:test_project_flutter/src/core/widgets/custom_text_field.dart';
import 'package:test_project_flutter/src/core/widgets/loading.dart';
import 'package:test_project_flutter/src/features/app/router/app_router.dart';
import 'package:test_project_flutter/src/features/auth/api/model/requests/auth_request.dart';
import 'package:test_project_flutter/src/features/auth/bloc/auth_bloc.dart';
import 'package:test_project_flutter/src/features/auth/repository/auth_repository_impl.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late AuthBLoC _authBLoC;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    _authBLoC = AuthBLoC(
      authRepository:
          AuthRepositoryImpl(client: context.dependencies.networkExecuter),
      tokenStorage: context.dependencies.tokenStorage,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _authBLoC,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Авторизация',
              style: context.theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: BlocConsumer<AuthBLoC, AuthState>(
              listener: (context, state) => state.maybeWhen(
                    orElse: () => null,
                    error: (String message) => SnackBarUtil.showSnackBar(
                      context: context,
                      message: message,
                      isError: true,
                    ),
                    success: (authResponse) => context.router.replaceAll(
                      [
                        const MainTabsRoute(),
                      ],
                    ),
                  ),
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// [LOGIN FIELDS]
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: emailController,
                            hintText: 'Логин или почта',
                          ),
                          const Divider(
                            height: 1,
                            color: Color(0xFFE0E6ED),
                            thickness: 1,
                            endIndent: 16,
                            indent: 16,
                          ),
                          CustomTextField(
                            controller: passwordController,
                            hintText: 'Пароль',
                          ),
                        ],
                      ),
                    ),
                    const ColumnSpacer(3.2),

                    /// [LOGIN BUTTONS]
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: state.inProgress
                          ? const Loading()
                          : CustomButton(
                              onPressed: () => _authBLoC.add(
                                AuthEvent.login(
                                  AuthRequest(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ),
                                ),
                              ),
                              title: 'Войти',
                            ),
                    ),
                    const ColumnSpacer(1.9),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: CustomButton(
                        onPressed: () {},
                        title: 'Зарегистрироваться',
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
