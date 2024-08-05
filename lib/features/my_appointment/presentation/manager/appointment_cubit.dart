import 'package:bloc/bloc.dart';
import 'package:pharm_flow/features/my_appointment/presentation/manager/appointment_state.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  AppointmentCubit() : super(const AppointmentState());

  changeRemindStatus(bool value) => emit(AppointmentState(isRemind: value));
}
