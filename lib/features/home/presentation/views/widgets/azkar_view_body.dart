import 'package:azkarapp/features/home/data/models/elzekr_model/all_azkar_model.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/azkar_details_list_view.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/azkar_list_view.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/azkar_view_app_bar.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/elzekr_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({super.key, required this.allAzkarModel, required this.id});
final AllAzkarModel allAzkarModel;
final int id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
           AzkarViewAppBar(allAzkarModel: allAzkarModel,),
          SizedBox(
            height: 32.h,
          ),
            AzkarDetailsListView(allAzkarModel: allAzkarModel, id: id,)
        ],
      ),
    );
  }
}
