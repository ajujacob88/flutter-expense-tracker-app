import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

//using intl package for date formatting
final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

//creating a map for linking a category with an icon
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  //this then generates a unique string id and assigns it as an initial value to the id property whenever this expense clas is initialised.. Uuid is a third part package installed using flutter pub add uuid

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  //final String category; //insted we need some fixed categories, so use enums
  final Category category;
  //so by using enums we are now using a custom type of category

  //also we can add method to classes
  // getFormattedDate() {
  //   return formatter.format(date);
  // }
  //instead of using above we can use get
  String get formattedDate {
    return formatter.format(date);
  }
}

//for chart
class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });

//defining an alternative constructor function
  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;

    //an alternative to for(var i=0;i<expenses.length,i++)

    for (final expense in expenses) {
      sum += expense.amount;
    }

    return sum;
  }
}
