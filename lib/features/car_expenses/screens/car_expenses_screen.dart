import 'package:flutter/material.dart';
import '../models/expense_model.dart';

class CarExpensesScreen extends StatelessWidget {
  final List<ExpenseModel> expenses;
  final double totalAmount;
  final VoidCallback onAddExpense;

  const CarExpensesScreen({
    super.key,
    required this.expenses,
    required this.totalAmount,
    required this.onAddExpense,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Расходы: ${totalAmount.toStringAsFixed(2)} руб.'),
      ),
      body: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          final expense = expenses[index];
          return ListTile(
            title: Text(expense.title),
            subtitle: Text(expense.date.toString()),
            trailing: Text('${expense.amount.toStringAsFixed(2)} руб.'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onAddExpense,
        child: const Icon(Icons.add),
      ),
    );
  }
}
