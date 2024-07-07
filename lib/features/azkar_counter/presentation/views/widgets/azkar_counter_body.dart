import 'package:azkarapp/features/azkar_counter/presentation/manger/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../constants.dart';
import 'azkar_counter_app_bar.dart';
import 'counter_shape.dart';
import 'custom_counter_button.dart';

class AzkarCounterBody extends StatelessWidget {
  const AzkarCounterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(),
        child: BlocBuilder<CounterCubit, int>(
          builder: (BuildContext context, int state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView (
                child: Column(
                  children: [
                    const AzkarCounterAppBar(),
                    SizedBox(
                      height: 184.h,
                    ),
                    CounterShape(
                      counter: '$state',
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomCounterButton(
                      buttonLabel: 'تسبيح',
                      textColor: Colors.white,
                      buttonColor:
                          const MaterialStatePropertyAll(kDarkModeContainerColor),
                      onPress: () {
                        context.read<CounterCubit>().increment();
                      },
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomCounterButton(
                      buttonLabel: 'إعادة',
                      textColor: kDarkModeContainerColor,
                      buttonColor: const MaterialStatePropertyAll(Colors.white),
                      onPress: () {
                        context.read<CounterCubit>().reset();
                
                      },
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
