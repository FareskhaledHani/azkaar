import 'package:azkarapp/core/utils/styles.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/change_theme_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          const ChangeThemeIcon(),
          SizedBox(
            width: 12.w,
          ),
          const SearchTextField(),
          SizedBox(
            width: 16.w,
          ),
          Text(
            '🎉اهلا بك',
            style: Styles.textStyle14,
          )
        ],
      ),
    );
  }
}
