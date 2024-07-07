import 'package:azkarapp/features/home/data/models/elzekr_model/all_azkar_model.dart';
import 'package:azkarapp/features/home/presentation/manger/all_azkar_cubit/all_azkar_cubit.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/azkar_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/api_services.dart';
import '../../data/repos/home_repo_impl.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key, required this.allAzkarModel, required this.id});

  final AllAzkarModel allAzkarModel;
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllAzkarCubit(HomeRepoImpl(ApiServices(Dio())))..getAllAzkar(),
      child: Scaffold(
          body: AzkarViewBody(allAzkarModel: allAzkarModel, id: id,)),
    );
  }
}
