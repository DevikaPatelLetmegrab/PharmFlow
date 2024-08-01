import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'new_launch_event.dart';
part 'new_launch_state.dart';

class NewLaunchBloc extends Bloc<NewLaunchEvent, NewLaunchState> {
  NewLaunchBloc() : super(NewLaunchInitial()) {
    on<NewLaunchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
