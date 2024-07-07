import 'package:azkarapp/core/widgets/change_theme_icon.dart';
import 'package:azkarapp/features/home/data/models/elzekr_model/all_azkar_model.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/fav_azkar_container.dart';
import 'package:flutter/material.dart';

class AzkarViewAppBar extends StatelessWidget {
  const AzkarViewAppBar({super.key, required this.allAzkarModel});
final AllAzkarModel allAzkarModel;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Row(
        children: [const ChangeThemeIcon(), FavAzkarContainer(allAzkarModel: allAzkarModel,)],
      ),
    );
  }
}
