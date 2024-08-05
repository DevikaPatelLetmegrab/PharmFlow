import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharm_flow/features/help_and_support/presentation/bloc/expansion_tile_state.dart';

class ExpansionTileCubit extends Cubit<ExpansionTileState> {
  ExpansionTileCubit() : super(const ExpansionTileState(expandedIndices: []));

  void toggleTile(int index) {
    final currentState = state;
    List<int> updatedIndices;

    if (currentState.expandedIndices.contains(index)) {
      updatedIndices = List.from(currentState.expandedIndices)..remove(index);
    } else {
      updatedIndices = List.from(currentState.expandedIndices)..add(index);
    }
    emit(ExpansionTileState(expandedIndices: updatedIndices));
  }
}
