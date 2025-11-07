class Medicine {
  final String id;
  final String name;
  final String dosage; // e.g. "3 pills (10 mg)"
  final String type; // e.g. "pill", "injection"
  final String icon; // asset or emoji reference
  final String treatmentId; // links to Treatment category

  Medicine({
    required this.id,
    required this.name,
    required this.dosage,
    required this.type,
    required this.icon,
    required this.treatmentId,
  });
}                                           