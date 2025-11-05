class Reminder {
  final String id;
  final String medicineId; // link to Medicine
  final DateTime time; // 8:00 AM, 9:30 AM
  final bool isCompleted; // checkbox state
  final DateTime date; // for filtering by selected day

  Reminder({
    required this.id,
    required this.medicineId,
    required this.time,
    required this.date,
    this.isCompleted = false,
  });
}
