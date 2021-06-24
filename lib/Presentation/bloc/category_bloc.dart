import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:machinetest/data/model/category.dart';
import 'package:machinetest/domain/repositories/repository.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryEvent event;
  @override
  CategoryState get initialState => CategoryInitial();

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    yield CategoryInitial();
    if (event is AddCategoryEvent) {
      yield AddCategoryLoadingState();
      try {
        var addcategoryScreen = await Repository().postCategory(params: event.paramCategory);
        yield AddCategoryLoadedState(addcategoryScreen: addcategoryScreen);
      } catch (e) {
        yield AddCategoryErrorState(message: e.toString());
      }
    }
  }
}
