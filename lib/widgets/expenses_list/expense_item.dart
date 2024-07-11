import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem(this.expense, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(expense.title,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'R ${expense.amount.toStringAsFixed(2)}',
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(categoryIcons[expense.category]),
                      const SizedBox(width: 8),
                      Text(expense
                          .formattedDate), // Ensure expense.date is a DateTime object
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // Add more fields here as needed
      ),
    );
  }
}
