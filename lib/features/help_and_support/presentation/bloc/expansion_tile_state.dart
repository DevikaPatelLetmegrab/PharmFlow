import 'package:equatable/equatable.dart';

class ExpansionTileState extends Equatable {
  final List<int> expandedIndices;

  const ExpansionTileState({required this.expandedIndices});

  @override
  List<Object?> get props => [expandedIndices];
}
