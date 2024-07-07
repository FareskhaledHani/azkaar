import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:azkarapp/core/utils/styles.dart';
import 'package:azkarapp/features/home/data/models/elzekr_model/all_azkar_model.dart';
import 'package:azkarapp/features/home/presentation/manger/fav_cubit/fav_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../azkar_view.dart';

class FavAzkarListViewItem extends StatelessWidget {
  const FavAzkarListViewItem({Key? key, required this.allAzkarModel}) : super(key: key);

  final AllAzkarModel allAzkarModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavCubit(allAzkarModel),
      child: BlocConsumer<FavCubit, FavState  >(
        listener: (context, state) {
          if (state is FavRemove) {
            // Handle UI update after item is removed
            // For example, you can show a SnackBar or update a local variable
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('تم حذف الذكر من المفضلة'),
              ),
            );
          }
        },
        builder: (context, state) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AzkarView(allAzkarModel: allAzkarModel, id: allAzkarModel.id!),
                    ),
                  );
                },
                child: Container(
                  height: 32.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        allAzkarModel.category!,
                        style: Styles.textStyle14,
                      ),
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<FavCubit>(context).removeZekr();
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
