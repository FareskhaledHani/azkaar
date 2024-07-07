import 'package:azkarapp/features/elsalah_times/presentation/views/widgets/elsalah_times_app_bar.dart';
import 'package:azkarapp/features/elsalah_times/presentation/views/widgets/elsalah_times_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElsalahTimesBody extends StatelessWidget {
  const ElsalahTimesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const ElsalahTimesAppBar(),
          SizedBox(
            height: 8.h,
          ),
          const ElsalahTimesListView()
        ],
      ),
    );
  }
}
