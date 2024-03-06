import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widget/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 154, 28, 212),
      ),
      home: const Expenses(),
    ),
  );
}
