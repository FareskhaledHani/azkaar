import 'package:azkarapp/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar(
      {super.key, required this.onChange, required this.currentIndex});

  final Function(int) onChange;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        child: NavigationBar(
          //indicatorColor: KDarkModeBackGroundColor,
          onDestinationSelected: onChange,
          selectedIndex: currentIndex,

          destinations: <Widget>[
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.home,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                icon: Icon(
                  Icons.home,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                label: ''),
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.calendar_month_outlined,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                icon: Icon(
                  Icons.calendar_month_outlined,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                label: ''),
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.favorite,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                icon: Icon(
                  Icons.favorite,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                label: ''),
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.replay,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                icon: Icon(
                  Icons.replay,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
