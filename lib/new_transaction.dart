import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewTransaction extends StatelessWidget {
  final Function addTs;
  NewTransaction(this.addTs);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              // onChanged: (val) => titleInput = val,
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
              // onChanged: (val) => amountInput = val,
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                addTs(
                  titleController.text,
                  double.parse(amountController.text),
                );
                print(titleController.text);
                print(amountController.text);
                // print(titleInput);
                // print(amountInput);
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(18),
                primary: Colors.purple,
              ),
              child: const Text('Add transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
