import 'package:azkarapp/features/bottom_nav_bar/presentation/views/widgets/bottom_nav_bar.dart';
import 'package:azkarapp/features/home/presentation/manger/all_azkar_cubit/all_azkar_cubit.dart';
import 'package:azkarapp/features/home/presentation/views/home_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/bottom_nav_bar/presentation/manger/nav_bar_cubit/navbar_cubit.dart';
import '../../features/bottom_nav_bar/presentation/views/bottom_nav_bar.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import 'api_services.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      /*  GoRoute(
        path: AppRouter.kHomeView,
        builder: (context, state) => BlocProvider(
          create: (context) => AllAzkarCubit(
              HomeRepoImpl(ApiServices(Dio()))
          ),
          child: const HomeView(

          ),
        ),
      ),*/
      GoRoute(
        path: '/',
        builder: (context, state) => BlocProvider(
            create: (context) => NavbarCubit(),
            child: const BottomNavBarBody()),
      )
    ],
  );
}
