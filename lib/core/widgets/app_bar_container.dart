import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
    required this.appBarText,
  });
  final String appBarText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 291.w,
      height: 32.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.primaryContainer),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            appBarText,
            style: Styles.textStyle14,
          ),
        ),
      ),
    );
  }
}
