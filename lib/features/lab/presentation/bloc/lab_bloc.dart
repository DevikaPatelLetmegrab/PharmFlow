import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'lab_event.dart';
part 'lab_state.dart';

class LabBloc extends Bloc<LabEvent, LabState> {
  LabBloc() : super(LabInitial()) {
    on<LabEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
