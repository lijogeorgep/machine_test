import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:machinetest/data/model/products.dart';
import 'package:machinetest/domain/repositories/repository.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  @override
  ProductState get initialState => ProductInitial();

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    yield ProductInitial();
    if (event is FetchProductEvent) {
      yield ProductLoadingState();
      try {
        var productScreen = await Repository().getProducts();
        yield ProductLoadedState(productScreen: productScreen);
      } catch (e) {
        yield ProductErrorState(message: e.toString());
      }
    }
  }
}
