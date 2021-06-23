import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:machinetest/data/model/add.dart';
import 'package:machinetest/domain/repositories/repository.dart';

part 'add_event.dart';
part 'add_state.dart';

class AddBloc extends Bloc<AddEvent, AddState> {
  AddEvent event;
  @override
  AddState get initialState => AddInitial();

  @override
  Stream<AddState> mapEventToState(
    AddEvent event,
  ) async* {
    yield AddInitial();
    if (event is AddProductEvent) {
      yield AddProductLoadingState();
      try {
        var addproductScreen = await Repository().postProducts(params: event.paramAdd);
        yield AddProductLoadedState(addproductScreen: addproductScreen);
      } catch (e) {
        yield AddProductErrorState(message: e.toString());
      }
    }
  }
}
