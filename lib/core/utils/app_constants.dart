import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_assets.dart';

import '../model/chip_model.dart';
import '../model/gender_model.dart';

class AppConstants {
  static const Duration gridAnimDuration375 = Duration(milliseconds: 375);
  static const Duration listAnimDuration300 = Duration(milliseconds: 300);
  static const Duration animDuration300 = Duration(milliseconds: 300);
  static const Duration animDuration200 = Duration(milliseconds: 200);
  static const Duration animDuration100 = Duration(milliseconds: 100);
  static const Duration listShimmerAnimDuration800 =
      Duration(milliseconds: 800);

  static DateTime defaultDate =
      DateTime.parse(DateTime.parse('12/11/2014').toIso8601String());
  static const double defaultScale = 0.5;
  static const double defaultSquircleRadius = 25;

  static List subscriptionFeatures = [
    'Access to all basic features',
    'Basic reporting and analytics',
    'Up to 10 individual users',
    '20GB individual data each user',
    'Basic chat and email support',
  ];

  static List<ChipModel> goalList = [
    ChipModel(title: 'E-Pharmacy ', isSelected: false),
    ChipModel(title: 'Health Metrics ', isSelected: true),
    ChipModel(title: ' Doctor Consultation ', isSelected: false),
    ChipModel(title: ' Statistics ', isSelected: false),
    ChipModel(title: ' AI Symptom Checker ', isSelected: false),
    ChipModel(title: ' Medication Management ', isSelected: true),
    ChipModel(title: ' Education ', isSelected: true),
    ChipModel(title: ' Pill Reminder  ', isSelected: false),
    ChipModel(title: ' Compare Medicine  ', isSelected: false),
    ChipModel(title: ' Assured medicine  ', isSelected: true),
    ChipModel(title: ' Low Price  ', isSelected: true),
  ];

  static List<ChipModel> medialConditionList = [
    ChipModel(title: 'Diabetes', isSelected: false),
    ChipModel(title: 'Athritis', isSelected: true),
    ChipModel(title: 'Asthma', isSelected: false),
    ChipModel(title: 'Depression', isSelected: false),
    ChipModel(title: 'Anxiety', isSelected: false),
    ChipModel(title: 'OCD', isSelected: true),
    ChipModel(title: 'Stroke', isSelected: true),
    ChipModel(title: 'Heart Failure', isSelected: false),
    ChipModel(title: 'Alzheimer', isSelected: false),
    ChipModel(title: 'GERD', isSelected: true),
    ChipModel(title: 'COPD', isSelected: true),
    ChipModel(title: 'High Blood Pressure', isSelected: true),
    ChipModel(title: 'Osteoporosis', isSelected: true),
    ChipModel(title: 'Thyroid', isSelected: false),
    ChipModel(title: 'Carpal Tunnel', isSelected: false),
    ChipModel(title: 'OCD', isSelected: true),
    ChipModel(title: 'High Blood Pressure', isSelected: true),
    ChipModel(title: 'Osteoporosis', isSelected: false),
    ChipModel(title: 'Anxiety', isSelected: true),
    ChipModel(title: 'Carpal Tunnel', isSelected: false),
    ChipModel(title: 'Athritis', isSelected: true),
  ];

  static List<GenderModel> genderList = [
    GenderModel(
        name: 'Male',
        icon: AppAssets.maleIcon,
        isSelected: false,
        desc: 'XY Chromosome'),
    GenderModel(
        name: 'Female',
        icon: AppAssets.femaleIcon,
        isSelected: false,
        desc: 'XX Chromosome'),
  ];

  static List<String> avtarList = [
    AppAssets.avtar2,
    AppAssets.avtar3,
    AppAssets.avtar1,
  ];
}

enum AddressType {
  /// Unknown address type.
  unknown(0),

  /// Work address.
  work(2),

  /// Home address.
  home(1);

  const AddressType(this.rawValue);

  factory AddressType.fromRawValue(int value) {
    switch (value) {
      case 0:
        return AddressType.unknown;
      case 1:
        return AddressType.home;
      case 2:
        return AddressType.work;
      default:
        throw ArgumentError.value(value, 'value', 'Invalid raw value.');
    }
  }

  /// The raw address type value.
  final int rawValue;

  factory AddressType.fromString(String value) {
    if (value == 'Home') {
      return AddressType.home;
    }
    if (value == 'Work') {
      return AddressType.work;
    }
    return AddressType.unknown;
  }
}

enum ProductStatus {
  active,
  inActive,
  blocked,
  approval,
  deleted,
  total,
  quantityLow,
  outOfStock,
}
