import 'package:finance_app/widgets/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final resHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Drawer(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        child: ListView(
          padding: const EdgeInsets.only(
            left: 25,
            right: 10,
          ),
          children: [
            SizedBox(
              height: resHeight * 0.075,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 60,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1517849845537-4d257902454a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww",
                  ),
                  radius: 100,
                ),
              ),
            ),
            SizedBox(
              height: resHeight * 0.0175,
            ),
            Text(
              'Dev Ode',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Flutter Developer',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: resHeight * 0.04,
            ),
            const DrawerItems(
              text: 'Learn More',
              icon: Iconsax.building,
            ),
            const DrawerItems(
              text: 'Security Settings',
              icon: Iconsax.security4,
            ),
            const DrawerItems(
              text: 'Online Shopping',
              icon: Iconsax.shopping_cart,
            ),
          ],
        ),
      ),
    );
  }
}
