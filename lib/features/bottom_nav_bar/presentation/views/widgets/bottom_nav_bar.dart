import 'package:azkarapp/features/azkar_counter/presentation/views/azkar_counter_view.dart';
import 'package:azkarapp/features/bottom_nav_bar/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:azkarapp/features/elsalah_times/presentation/views/elsalah_times_view.dart';
import 'package:azkarapp/features/home/presentation/views/fav_azkar_view.dart';
import 'package:azkarapp/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/nav_bar_cubit/navbar_cubit.dart';

class BottomNavBarBody extends StatelessWidget {
  const BottomNavBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavbarCubit, NavbarState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NavbarCubit.get(context);
          Widget containerBack() {
            if (cubit.currentIndex == 0) {
              return const HomeView();
            } else if (cubit.currentIndex == 1) {
              return const ElsalahTimesView();
            } else if (cubit.currentIndex == 2) {
              return const FavAzkarView();
            } else {
              return const AzkarCounterView();
            }
          }

          return Scaffold(
            bottomNavigationBar: CustomBottomNavBar(
              onChange: (index) {
                cubit.changeBottomNavBar(index);
              },
              currentIndex: cubit.currentIndex,
            ),
            body: containerBack(),
          );
        });
  }
}
