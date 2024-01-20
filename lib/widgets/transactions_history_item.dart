import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String date;
  final String amount;
  final bool type;

  const TransactionHistoryItem({
    super.key,
    required this.title,
    required this.icon,
    required this.date,
    required this.amount,
    required this.type,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: type
            ? Theme.of(context).colorScheme.errorContainer
            : Theme.of(context).colorScheme.tertiaryContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          size: 30,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Text(
          date,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Text(
          amount,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
