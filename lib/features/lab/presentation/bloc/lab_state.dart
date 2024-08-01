part of 'lab_bloc.dart';

abstract class LabState extends Equatable {
  const LabState();  

  @override
  List<Object> get props => [];
}
class LabInitial extends LabState {}
