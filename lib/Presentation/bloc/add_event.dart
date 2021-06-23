part of 'add_bloc.dart';

abstract class AddEvent extends Equatable {
  @override
  List<Object> get props => null;
}
class AddProductEvent extends AddEvent {
  final Map paramAdd;
  AddProductEvent({this.paramAdd});
  @override
  List<Object> get props => null;
}