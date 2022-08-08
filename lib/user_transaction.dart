import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:personal_expenses/transaction_list.dart';

import 'models/transaction.dart';
import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New chair',
      amount: 59,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New keyboard',
      amount: 79,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Monitor',
      amount: 99,
      date: DateTime.now(),
    ),
  ];

  _addNewTransaction(String title, double amount) {
    final newTs = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTs);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
