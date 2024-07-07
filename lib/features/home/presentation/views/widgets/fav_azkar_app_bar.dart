import 'package:azkarapp/core/widgets/change_theme_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavAzkarAppBar extends StatelessWidget {
  const FavAzkarAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        children: [ChangeThemeIcon(), CustomFavAzkar()],
      ),
    );
  }
}

class CustomFavAzkar extends StatelessWidget {
  const CustomFavAzkar({super.key});

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('المفضلة'),
              Icon(
                Icons.favorite,
                color: Theme.of(context).colorScheme.inversePrimary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
