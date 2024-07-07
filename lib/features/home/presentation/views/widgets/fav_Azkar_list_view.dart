import 'package:azkarapp/features/home/presentation/views/widgets/fav_azkar_list_view_item.dart';
import 'package:azkarapp/main.dart';
import 'package:flutter/material.dart';
class FavAzkarListView extends StatelessWidget {
  const FavAzkarListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: favList.length,
          itemBuilder: (context, index) {
        return  FavAzkarListViewItem(allAzkarModel: favList[index]);
      }),
    );
  }
}
