import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    //listview.builder - only the items will be loaded only if they are about to be visible
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Text(expenses[index].title),

      //this is same as
      // itemBuilder: (ctx, index) {
      //   return Text(expenses[index].title);
      // },
    );
  }
}
