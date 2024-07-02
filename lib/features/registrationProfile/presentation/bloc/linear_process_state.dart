import 'package:equatable/equatable.dart';

class LinearProcessState extends Equatable {
  int currentIndex;

  LinearProcessState({this.currentIndex = 0});

  @override
  // TODO: implement props
  List<Object?> get props => [currentIndex];
}
