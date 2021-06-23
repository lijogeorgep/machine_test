part of 'add_bloc.dart';

abstract class AddState extends Equatable {
  const AddState();
}

class AddInitial extends AddState {
  @override
  List<Object> get props => [];
}
class AddProductLoadingState extends AddState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class AddProductLoadedState extends AddState {
  final Add addproductScreen;

  AddProductLoadedState({this.addproductScreen});

  @override
  List<Object> get props => [];
}
class AddProductErrorState extends AddState {
  final String message;

  AddProductErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}