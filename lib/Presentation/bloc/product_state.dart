part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();
}

class ProductInitial extends ProductState {
  @override
  List<Object> get props => [];
}
class ProductLoadingState extends ProductState {
  @override
  List<Object> get props => [];
}
class ProductLoadedState extends ProductState {
  final Products productScreen;

  ProductLoadedState({this.productScreen});

  @override
  List<Object> get props => [];
}

class ProductErrorState extends ProductState {
  final String message;

  ProductErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}
