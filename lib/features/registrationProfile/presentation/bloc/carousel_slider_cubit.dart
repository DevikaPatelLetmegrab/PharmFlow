import 'package:bloc/bloc.dart';
import 'package:pharm_flow/features/registrationProfile/presentation/bloc/carousel_slider_state.dart';


class CarouselSlideCubit extends Cubit<CarouselSlideState> {
  CarouselSlideCubit() : super(CarouselSlideState());

  void changeCurrentIndex(int index) =>
      emit(CarouselSlideState(currentIndex: index));
}
