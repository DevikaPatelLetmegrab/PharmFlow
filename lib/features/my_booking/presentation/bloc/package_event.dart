import 'package:equatable/equatable.dart';

abstract class PackageEvent extends Equatable {
  const PackageEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UpdateEvent extends PackageEvent {
  final int index;

  const UpdateEvent({required this.index});

  @override
  // TODO: implement props
  List<Object?> get props => [index];
}

class FetchListEvent extends PackageEvent {}
