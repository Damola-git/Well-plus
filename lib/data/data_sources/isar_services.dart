import 'package:isar/isar.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import '../models/treatment_category.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = _openDB();
  }

  Future<Isar> _openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [TreatmentSchema],
      directory: dir.path,
    );

    // Seed the database only once
    final existingCount = await isar.treatments.count();
    if (existingCount == 0) {
      await _seedTreatments(isar);
    }

    return isar;
  }

  Future<void> _seedTreatments(Isar isar) async {
    final defaultTreatments = [
      Treatment()
        ..name = 'Migraine'
        ..emoji = '💊'
        ..rxCount = 2
        ..otcCount = 1
        ..backgroundColor = const Color(0xFFFFC1CC), // light pink
      Treatment()
        ..name = 'Diabetes'
        ..emoji = '🩸'
        ..rxCount = 3
        ..otcCount = 0
        ..backgroundColor = const Color(0xFFB3E5FC), // light blue
      Treatment()
        ..name = 'Hypertension'
        ..emoji = '❤️'
        ..rxCount = 2
        ..otcCount = 1
        ..backgroundColor = const Color(0xFFC8E6C9), // light green
    ];

    await isar.writeTxn(() async {
      await isar.treatments.putAll(defaultTreatments);
    });
  }
}
 