import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_project_flutter/src/core/extensions/context.dart';
import 'package:test_project_flutter/src/core/res/app_svg_images.dart';
import 'package:test_project_flutter/src/core/res/resources.dart';
import 'package:test_project_flutter/src/core/widgets/column_spacer.dart';
import 'package:test_project_flutter/src/features/app/router/app_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Профиль',
          style: context.theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          const ColumnSpacer(3.8),
          SvgPicture.asset(
            AppSvgImages.icProfileV2,
          ),
          const ColumnSpacer(1.5),
          Text(
            context.dependencies.tokenStorage.getNickName().toString(),
            style: context.theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const ColumnSpacer(1.2),
          Text(
            context.dependencies.tokenStorage.getUserEmail().toString(),
            style: context.theme.textTheme.titleMedium?.copyWith(
              color: AppColors.greyColor,
            ),
          ),
          const ColumnSpacer(2.7),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () async {
              context.dependencies.tokenStorage.deleteToken();
              context.router.replaceAll([const LoginScreenRoute()]);
            },
            child: Container(
              color: Colors.white,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 21,
                horizontal: 30,
              ),
              child: Text(
                'Выйти',
                style: context.theme.textTheme.titleMedium?.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
