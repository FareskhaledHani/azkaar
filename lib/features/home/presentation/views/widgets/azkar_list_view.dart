import 'package:azkarapp/features/home/presentation/manger/all_azkar_cubit/all_azkar_cubit.dart';
import 'package:azkarapp/features/home/presentation/manger/all_azkar_cubit/all_azkar_cubit.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/azkar_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/elzekr_model/all_azkar_model.dart';
import '../../../data/models/elzekr_model/all_azkar_model.dart';
import '../../../data/models/elzekr_model/all_azkar_model.dart';

class AzkarListView extends StatelessWidget {
  const AzkarListView({
    super.key,
  });

  //final Widget listViewItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllAzkarCubit, AllAzkarState>(
      builder: (context, state) {
        if (state is AllAzkarSuccess) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListView.builder(
                  itemCount: state.allAzkarModel.length,
                  itemBuilder: (context, index) {
                    print(state);
                    return AzkarListViewItem(
                      allAzkarModel: state.allAzkarModel[index],
                    );
                  }),
            ),
          );
        } else if (state is AllAzkarFailure) {
          print(state);
          return Text(state.errMassage);
        } else if (state is AllAzkarLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Text('u are donkey');
        }
      },
    );
  }
}
