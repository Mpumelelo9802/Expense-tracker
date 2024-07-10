import 'package:flutter/material.dart';

import 'package:expense_tracker/expenses.dart';

//import 'package:expense_tracker/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 45, 3, 117),
          foregroundColor: Colors.white,
        ),
      ),
      home: const Expenses(),
    ),
  );
}