import 'package:azkarapp/features/home/data/models/elzekr_model/all_azkar_model.dart';
import 'package:azkarapp/features/home/presentation/manger/fav_cubit/fav_cubit.dart';
import 'package:azkarapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavAzkarContainer extends StatelessWidget {
  const FavAzkarContainer({super.key, required this.allAzkarModel});

  final AllAzkarModel allAzkarModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavCubit(allAzkarModel),
      child: BlocBuilder<FavCubit, FavState>(
        builder: (context, state) {
          return Container(
            width: 291.w,
            height: 32.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme
                    .of(context)
                    .colorScheme
                    .primaryContainer),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(allAzkarModel.category!),
                    IconButton(
                        onPressed: () {
                          if (favList.contains(allAzkarModel)) {
                            context.read<FavCubit>().removeZekr();
                          }
                          else{
                            context.read<FavCubit>().addZekr();
                          }
                         },
                        icon:  favIcon()
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  Icon favIcon(){
    if(favList.contains(allAzkarModel)){
      return  const Icon(

        Icons.favorite,
        color: Colors.red,
      );

    }
    else{
      return  const Icon(

        Icons.favorite_border_outlined,

      );
    }
  }
}
