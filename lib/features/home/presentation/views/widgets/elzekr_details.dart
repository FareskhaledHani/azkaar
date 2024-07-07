import 'package:azkarapp/core/utils/styles.dart';
import 'package:azkarapp/features/home/data/models/elzekr_model/all_azkar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class ElzekrDetails extends StatelessWidget {
  const ElzekrDetails({super.key, required this.allAzkarModel, required this.id});
final AllAzkarModel allAzkarModel;
final int id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 220.h,
        width: 327.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.primaryContainer),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ReadMoreText(
                  allAzkarModel.array![id-1]!.text! ,
                  style: Styles.textStyle14,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'قراءه المزيد',
                  trimExpandedText: ' اخفاء',
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 200.w),
                  child: Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color:
                            Theme.of(context).colorScheme.secondaryContainer),
                    alignment: Alignment.bottomLeft,
                    child: Center(
                        child: Text(
                      allAzkarModel.array![id-1]!.count!.toString(),
                      style: Styles.textStyle14,
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
