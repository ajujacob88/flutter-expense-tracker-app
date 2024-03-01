import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid
            .v4(); //this then generates a unique string id and assigns it as an initial value to the id property whenever this expense clas is initialised.. Uuid is a third part package installed using flutter pub add uuid

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  //final String category; //insted we need some fixed categories, so use enums
  final Category category;
  //so by using enums we are now using a custom type of category
}
