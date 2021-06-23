part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  @override
  List<Object> get props => null;
}

class FetchProductEvent extends ProductEvent {
  FetchProductEvent();
  @override
  List<Object> get props => null;
}
