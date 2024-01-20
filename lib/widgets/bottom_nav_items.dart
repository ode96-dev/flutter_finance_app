import 'package:flutter/material.dart';

class BottomNavItems extends StatefulWidget {
  final IconData icon;
  final bool active;
  const BottomNavItems({super.key, required this.icon, required this.active});

  @override
  State<BottomNavItems> createState() => _BottomNavItemsState();
}

class _BottomNavItemsState extends State<BottomNavItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: widget.active
            ? Theme.of(context).colorScheme.onTertiaryContainer
            : Theme.of(context).colorScheme.onSecondaryContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          widget.icon,
          color: Theme.of(context).colorScheme.tertiaryContainer,
          size: 30.0,
        ),
      ),
    );
  }
}
