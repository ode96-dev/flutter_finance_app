import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  final String text;
  final IconData icon;

  const DrawerItems({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        icon,
        size: 30.0,
        color: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
      onTap: () {
        Navigator.pop(context);
      },
      title: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
