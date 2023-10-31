import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
          BalanceCard(balance: 1500.0),
          ExpenseList(),
      ],
      ), );
  }
}


class BalanceCard extends StatelessWidget {
  final double balance;

  BalanceCard({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Current Balance',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '\$${balance.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }
}

class ExpenseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You can populate this list with actual expenses
    List<Expense> expenses = [
      Expense(name: 'Groceries', amount: 100.0),
      Expense(name: 'Utilities', amount: 200.0),
      // Add more expenses here
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          final expense = expenses[index];
          return ListTile(
            title: Text(expense.name),
            trailing: Text('\$${expense.amount.toStringAsFixed(2)}'),
          );
        },
      ),

    );
  }
}



class Expense {
  final String name;
  final double amount;

  Expense({required this.name, required this.amount});
}