import 'package:azkarapp/core/widgets/app_bar_container.dart';
import 'package:azkarapp/core/widgets/change_theme_icon.dart';
import 'package:flutter/material.dart';

class ElsalahTimesAppBar extends StatelessWidget {
  const ElsalahTimesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        children: [
          ChangeThemeIcon(),
          AppBarContainer(
            appBarText: 'مواقيت الصلاة',
          ),
        ],
      ),
    );
  }
}
