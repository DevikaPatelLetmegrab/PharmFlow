import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'seasonal_product_event.dart';
part 'seasonal_product_state.dart';

class SeasonalProductBloc extends Bloc<SeasonalProductEvent, SeasonalProductState> {
  SeasonalProductBloc() : super(SeasonalProductInitial()) {
    on<SeasonalProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
