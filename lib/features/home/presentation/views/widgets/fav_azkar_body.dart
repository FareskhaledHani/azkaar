import 'package:azkarapp/features/home/presentation/views/widgets/fav_Azkar_list_view.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/fav_azkar_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavAzkarBody extends StatelessWidget {
  const FavAzkarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [FavAzkarAppBar(), FavAzkarListView()],
      ),
    );
  }
}
