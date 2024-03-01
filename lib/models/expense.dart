import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
  }) : id = uuid
            .v4(); //this then generates a unique string id and assigns it as an initial value to the id property whenever this expense clas is initialised.. Uuid is a third part package installed using flutter pub add uuid

  final String id;
  final String title;
  final double amount;
  final DateTime date;
}
