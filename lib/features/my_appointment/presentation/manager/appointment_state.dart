import 'package:equatable/equatable.dart';

class AppointmentState extends Equatable {
  final bool isRemind;

  const AppointmentState({this.isRemind = false});

  @override
  // TODO: implement props
  List<Object?> get props => [isRemind];
}
