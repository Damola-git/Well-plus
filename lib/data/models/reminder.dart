import 'package:isar/isar.dart';

part 'reminder.g.dart';

@collection
class Reminder {
  Id id = Isar.autoIncrement;

  late String medicineId; 
  late DateTime time;
  late DateTime date;
  bool isCompleted = false;

  @enumerated
  late ReminderStatus status; // pending, taken, missed
}

enum ReminderStatus { pending, taken, missed }