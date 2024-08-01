import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'deal_event.dart';
part 'deal_state.dart';

class DealBloc extends Bloc<DealEvent, DealState> {
  DealBloc() : super(DealInitial()) {
    on<DealEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
