import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'help_and_support_event.dart';
part 'help_and_support_state.dart';

class HelpAndSupportBloc extends Bloc<HelpAndSupportEvent, HelpAndSupportState> {
  HelpAndSupportBloc() : super(HelpAndSupportInitial()) {
    on<HelpAndSupportEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
