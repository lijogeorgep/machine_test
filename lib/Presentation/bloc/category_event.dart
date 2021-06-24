part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  @override
  List<Object> get props => null;
}
class AddCategoryEvent extends CategoryEvent {
  final Map paramCategory;
  AddCategoryEvent({this.paramCategory});
  @override
  List<Object> get props => null;
}