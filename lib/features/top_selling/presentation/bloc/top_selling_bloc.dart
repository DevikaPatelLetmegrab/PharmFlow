import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'top_selling_event.dart';
part 'top_selling_state.dart';

class TopSellingBloc extends Bloc<TopSellingEvent, TopSellingState> {
  TopSellingBloc() : super(TopSellingInitial()) {
    on<TopSellingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
