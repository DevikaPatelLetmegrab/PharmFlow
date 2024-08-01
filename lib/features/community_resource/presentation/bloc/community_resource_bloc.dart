import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'community_resource_event.dart';
part 'community_resource_state.dart';

class CommunityResourceBloc extends Bloc<CommunityResourceEvent, CommunityResourceState> {
  CommunityResourceBloc() : super(CommunityResourceInitial()) {
    on<CommunityResourceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
