class Treatment {
  final String id;
  final String name; // e.g. Migraine
  final String emoji; // 🧠 😷 etc.
  final int rxCount; // prescription drugs
  final int otcCount; // over-the-counter
  final Color backgroundColor; // pastel color in UI

  Treatment({
    required this.id,
    required this.name,
    required this.emoji,
    required this.rxCount,
    required this.otcCount,
    required this.backgroundColor,
  });
}

