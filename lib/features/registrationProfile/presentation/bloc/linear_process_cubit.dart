import 'package:bloc/bloc.dart';
import 'package:pharm_flow/features/registrationProfile/presentation/bloc/linear_process_state.dart';

class LinearProcessCubit extends Cubit<LinearProcessState> {
  LinearProcessCubit() : super(LinearProcessState());

  void changeCurrentIndex(int index) =>
      emit(LinearProcessState(currentIndex: index));
}
