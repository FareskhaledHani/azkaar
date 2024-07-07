import 'package:azkarapp/features/elsalah_times/presentation/manger/elsalah_times_cubit/elsalah_times_cubit.dart';
import 'package:azkarapp/features/home/data/models/elzekr_model/all_azkar_model.dart';
import 'package:azkarapp/features/home/presentation/manger/all_azkar_cubit/all_azkar_cubit.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/elzekr_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AzkarDetailsListView extends StatelessWidget {
  const AzkarDetailsListView({super.key, required this.allAzkarModel, required this.id});
  final AllAzkarModel allAzkarModel;
  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllAzkarCubit,AllAzkarState>(
      builder: (context,state){
        if(state is AllAzkarSuccess){
         return Expanded(
            child: ListView.builder(
                itemCount: state.allAzkarModel[id-1].array!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ElzekrDetails(
                    allAzkarModel:allAzkarModel, id: state.allAzkarModel[index].id!,
                  );
                }),
          );

        }

        else if( state is AllAzkarFailure){
          return Text( state.errMassage);

        }
        else {
          return const CircularProgressIndicator();
        }
      },

    );


    //   Expanded(
    //   child: ,
    // );
  }
}
