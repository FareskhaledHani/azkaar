import 'package:azkarapp/core/utils/api_services.dart';
import 'package:azkarapp/features/elsalah_times/data/repo/elsalah_times_impl.dart';
import 'package:azkarapp/features/elsalah_times/presentation/manger/elsalah_times_cubit/elsalah_times_cubit.dart';
import 'package:azkarapp/features/elsalah_times/presentation/views/widgets/elsalah_times_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElsalahTimesView extends StatefulWidget {
  const ElsalahTimesView({super.key});

  @override
  State<ElsalahTimesView> createState() => _ElsalahTimesViewState();
}

class _ElsalahTimesViewState extends State<ElsalahTimesView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ElsalahTimesCubit(ElsalahTimesImpl(ApiServices(Dio())))
            ..getElsalahTimes(),
      child: const Scaffold(
        body: ElsalahTimesBody(),
      ),
    );
  }
}
