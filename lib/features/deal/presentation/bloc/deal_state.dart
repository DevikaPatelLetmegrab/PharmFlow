part of 'deal_bloc.dart';

abstract class DealState extends Equatable {
  const DealState();  

  @override
  List<Object> get props => [];
}
class DealInitial extends DealState {}
