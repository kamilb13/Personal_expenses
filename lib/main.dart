import 'package:flutter/material.dart';
import 'package:personal_expenses/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'New chair',
      amount: 599,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Personal expenses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('CHART'),
            ),
          ),
          Column(
            children: 
              transaction.map((transaction){
                return Card(child: Text(transaction.title),);
              }).toList()
          ),
        ],
      ),
    );
  }
}
