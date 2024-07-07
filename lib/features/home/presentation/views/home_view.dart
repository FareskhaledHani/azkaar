//import 'package:azkarapp/features/data/models/elzekr_model/azkar_model.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/api_services.dart';
import '../../data/repos/home_repo_impl.dart';
import '../manger/all_azkar_cubit/all_azkar_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });
//final AzkarModel azkarModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        //todo: function here    AllAzkarCubit(HomeRepoImpl(ApiServices(Dio())))..getAllAzkar()
        return           AllAzkarCubit(HomeRepoImpl(ApiServices(Dio())))
      ;},
      child: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
