import 'package:azkarapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/azkar_list_view_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/api_services.dart';
import '../../../data/repos/home_repo_impl.dart';
import '../../manger/all_azkar_cubit/all_azkar_cubit.dart';
import 'azkar_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });


  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<AllAzkarCubit>(context).getAllAzkar();
    // AllAzkarCubit(HomeRepoImpl(ApiServices(Dio())))..getAllAzkar();
 }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CustomAppBar(),
          AzkarListView(),

          //Test()
        ],
      ),
    );
  }
}
