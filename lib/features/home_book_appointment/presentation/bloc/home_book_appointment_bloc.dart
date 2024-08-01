import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_book_appointment_event.dart';
part 'home_book_appointment_state.dart';

class HomeBookAppointmentBloc extends Bloc<HomeBookAppointmentEvent, HomeBookAppointmentState> {
  HomeBookAppointmentBloc() : super(HomeBookAppointmentInitial()) {
    on<HomeBookAppointmentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
