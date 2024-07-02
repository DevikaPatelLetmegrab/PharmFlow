import 'package:equatable/equatable.dart';

class CarouselSlideState extends Equatable {
  int currentIndex;

  CarouselSlideState({this.currentIndex = 0});

  @override
  // TODO: implement props
  List<Object?> get props => [currentIndex];
}
