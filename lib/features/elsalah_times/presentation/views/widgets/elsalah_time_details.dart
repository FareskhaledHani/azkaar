import 'package:azkarapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalahTimeDetails extends StatelessWidget {
  const SalahTimeDetails({super.key, required this.elsalahName, required this.elsalahTime});
final String elsalahName;
final String elsalahTime;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 34.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.primaryContainer),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  elsalahName,
                  style: Styles.textStyle14,
                ),
                Text(
                  elsalahTime,
                  style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
