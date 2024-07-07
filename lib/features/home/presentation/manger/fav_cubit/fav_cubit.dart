
import 'dart:convert';

import 'package:azkarapp/main.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/models/elzekr_model/all_azkar_model.dart';

part 'fav_state.dart';

class FavCubit extends Cubit<FavState> {
  final AllAzkarModel allAzkarModel;

  FavCubit(this.allAzkarModel) : super(FavInitial());
  Future<void> saveFavList( favList) async {
    final prefs = await SharedPreferences.getInstance();
    final favListJson = favList.map((item) => json.encode(item.toJson())).toList();
    await prefs.setStringList('favList', favListJson);
  }

  void addZekr() {
    favList.add(allAzkarModel);
saveFavList(allAzkarModel);
    emit(FavAdd());
  }

  void removeZekr() {
    favList.remove(allAzkarModel);
    saveFavList(allAzkarModel);
    emit(FavRemove());
  }

}