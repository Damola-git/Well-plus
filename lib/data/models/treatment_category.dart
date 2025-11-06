import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'treatment_category.g.dart';

@collection
class TreatmentCategory {
  Id id = Isar.autoIncrement;

  late String name;
  late String emoji;
  late int rxCount;
  late int otcCount;
  late int backgroundColorValue;
  
  @ignore
  Color get backgroundColor => Color(backgroundColorValue);

  set backgroundColor(Color color) {
   
    backgroundColorValue = color.toARGB32();
  }
}
