import 'package:bloc/bloc.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/features/my_booking/presentation/bloc/package_event.dart';
import 'package:pharm_flow/features/my_booking/presentation/bloc/package_state.dart';

class PackageBloc extends Bloc<PackageEvent, PackageState> {
  PackageBloc() : super(PackageState()) {
    on<UpdateEvent>(updateStatus);
    on<FetchListEvent>(fetchFavList);
  }

  Future<void> fetchFavList(
      FetchListEvent event, Emitter<PackageState> emit) async {

    emit(
      state.copyWith(
        list: AppConstants.packageList,
      ),
    );
  }

  void updateStatus(UpdateEvent event, Emitter<PackageState> emit) {
    var model = state.packageList![event.index];
    emit(state.copyWith(selectedModel: model));
  }
}
