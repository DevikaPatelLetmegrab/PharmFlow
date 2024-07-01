import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CounterCubit extends Cubit<CurrentPageState> {
  CounterCubit() : super(CurrentPageState(0));
  final pageController = PageController();

  void changeIndex(int page) => emit(CurrentPageState(page));
}



class CurrentPageState extends Equatable {
  int index = 0;

  CurrentPageState(this.index);

  @override
  // TODO: implement props
  List<Object?> get props => [index];
}
