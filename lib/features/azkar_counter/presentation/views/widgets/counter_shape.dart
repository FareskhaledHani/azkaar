import 'package:azkarapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CounterShape extends StatelessWidget {
  const CounterShape({super.key, required this.counter});
  final String counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 120.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.tertiaryContainer),
      child: Center(
        child: Text(
          counter,
          style: Styles.textStyle20
              .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
