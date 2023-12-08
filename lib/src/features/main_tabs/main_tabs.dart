// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_project_flutter/src/core/res/app_svg_images.dart';
import 'package:test_project_flutter/src/core/res/resources.dart';
import 'package:test_project_flutter/src/features/app/router/app_router.dart';

@immutable
class MainTabs extends StatefulWidget {
  const MainTabs({Key? key}) : super(key: key);

  @override
  State<MainTabs> createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  @override
  Widget build(BuildContext context) => AutoTabsRouter(
        routes: const [
          HomeRouter(),
          MapsRouter(),
          FavoritesRouter(),
          ProfileRouter(),
        ],
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: FadeTransition(
              opacity: animation,
              child: child,
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: AppColors.whiteColor,
              currentIndex: tabsRouter.activeIndex,
              selectedItemColor: AppColors.primaryColor,
              showUnselectedLabels: true,
              unselectedFontSize: 14,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                setState(() {});
                tabsRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppSvgImages.icMain,
                  ),
                  activeIcon: SvgPicture.asset(
                    AppSvgImages.icMain,
                    color: AppColors.primaryColor,
                  ),
                  label: 'Лента',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppSvgImages.icMap,
                  ),
                  activeIcon: SvgPicture.asset(
                    AppSvgImages.icMap,
                    color: AppColors.primaryColor,
                  ),
                  label: 'Карта',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppSvgImages.icFavorite,
                  ),
                  activeIcon: SvgPicture.asset(
                    AppSvgImages.icFavorite,
                    color: AppColors.primaryColor,
                  ),
                  label: 'Избранные',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppSvgImages.icProfile,
                    color: Colors.black,
                  ),
                  activeIcon: SvgPicture.asset(
                    AppSvgImages.icProfile,
                    color: AppColors.primaryColor,
                  ),
                  label: 'Профиль',
                ),
              ],
            ),
          );
        },
      );
}
