import 'package:flutter/material.dart';
import 'package:well_plus/presentation/widgets/date_selector.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Well Plus",
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  DateTime _selectedDate = DateTime.now(); // default to today

  void _onDateSelected(DateTime newDate) {
    setState(() {
      _selectedDate = newDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Well Plus')),
      body: Column(
        children: [
          DateSelector(
            selectedDate: _selectedDate,
            onDateSelected: _onDateSelected,
          ),
          const SizedBox(height: 16),
          
        ],
      ),
    );
  }
}
