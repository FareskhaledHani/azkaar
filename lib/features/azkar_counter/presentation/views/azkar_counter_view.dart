import 'package:azkarapp/features/azkar_counter/presentation/views/widgets/azkar_counter_body.dart';
import 'package:flutter/material.dart';

class AzkarCounterView extends StatelessWidget {
  const AzkarCounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AzkarCounterBody(),
    );
  }
}
