part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {}

@immutable
class GetData extends ProductEvent {
  @override
  List<Object?> get props => [];
}
