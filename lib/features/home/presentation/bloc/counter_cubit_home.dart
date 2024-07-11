import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CounterCubitHome extends Cubit<CurrentPageHomeState> {
  CounterCubitHome() : super(CurrentPageHomeState(0));
  final pageController = PageController();

  void changeIndex(int page) => emit(CurrentPageHomeState(page));
}



class CurrentPageHomeState extends Equatable {
  int index = 0;

  CurrentPageHomeState(this.index);

  @override
  // TODO: implement props
  List<Object?> get props => [index];
}
