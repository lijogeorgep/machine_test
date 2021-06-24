part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
}

class CategoryInitial extends CategoryState {
  @override
  List<Object> get props => [];
}
class AddCategoryLoadingState extends CategoryState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class AddCategoryLoadedState extends CategoryState {
  final Category addcategoryScreen;

  AddCategoryLoadedState({this.addcategoryScreen});

  @override
  List<Object> get props => [];
}
class AddCategoryErrorState extends CategoryState {
  final String message;

  AddCategoryErrorState({@required this.message});

  @override
  List<Object> get props => [message];
}