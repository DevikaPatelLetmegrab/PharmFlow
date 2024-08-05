import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'near_by_event.dart';
part 'near_by_state.dart';

class NearByBloc extends Bloc<NearByEvent, NearByState> {
  NearByBloc() : super(NearByInitial()) {
    on<NearByEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
