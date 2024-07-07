import 'package:azkarapp/core/utils/styles.dart';
import 'package:azkarapp/core/widgets/change_theme_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/app_bar_container.dart';

class AzkarCounterAppBar extends StatelessWidget {
  const AzkarCounterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        children: [
          ChangeThemeIcon(),
          AppBarContainer(
            appBarText: 'عداد  الاذكار',
          ),
        ],
      ),
    );
  }
}
