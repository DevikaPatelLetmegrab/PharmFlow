part of 'prescription_bloc.dart';

abstract class PrescriptionState extends Equatable {
  const PrescriptionState();  

  @override
  List<Object> get props => [];
}
class PrescriptionInitial extends PrescriptionState {}
