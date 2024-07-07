import 'package:azkarapp/core/utils/app_routers.dart';
import 'package:azkarapp/core/utils/themes.dart';
import 'package:azkarapp/features/home/data/models/elzekr_model/all_azkar_model.dart';
import 'package:azkarapp/features/home/presentation/manger/all_azkar_cubit/all_azkar_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/api_services.dart';
import 'core/utils/hive_helper.dart';
import 'features/home/presentation/views/home_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
List<AllAzkarModel> favList=[];
void main() async {
  await HiveHelper.init();
  await HiveHelper.getTheme ?? await HiveHelper.cacheTheme(value: false);
  bool? isDark = await HiveHelper.getTheme;
  runApp(const AzkarApp());

}

class AzkarApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (__, ThemeMode currentMode, ___) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: lightTheme(context),
            darkTheme: darkTheme(context),
            themeMode: currentMode,
          ),
        );
      },
    );
  }
}
