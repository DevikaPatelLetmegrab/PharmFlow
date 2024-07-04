import 'package:equatable/equatable.dart';
import 'package:pharm_flow/core/model/package_model.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';

class PackageState extends Equatable {
  final List<PackageModel>? packageList;
  final PackageModel? selectedModel;

  PackageState({
    this.packageList = const [],
    this.selectedModel,
  });

  PackageState copyWith(
      {List<PackageModel>? list, PackageModel? selectedModel}) {
    return PackageState(
        packageList: list ?? packageList, selectedModel: selectedModel);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [packageList!, selectedModel];
}
