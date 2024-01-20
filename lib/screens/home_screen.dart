import 'package:finance_app/screens/card_screen.dart';
import 'package:finance_app/screens/drawer_screen.dart';
import 'package:finance_app/widgets/bottom_nav_items.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/finance_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final res_width = MediaQuery.of(context).size.width;
    final res_height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    int bottomIndex = 0;
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerScreen(),
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1517849845537-4d257902454a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww",
            ),
            radius: 100,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Iconsax.menu_1,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 30.0),
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIndex = 0;
                    });
                  },
                  child: BottomNavItems(
                    icon: Iconsax.menu4,
                    active: bottomIndex == 0 ? true : false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIndex = 1;
                    });
                  },
                  child: BottomNavItems(
                    icon: Iconsax.notification,
                    active: bottomIndex == 1 ? true : false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIndex = 2;
                    });
                  },
                  child: BottomNavItems(
                    icon: Iconsax.message4,
                    active: bottomIndex == 2 ? true : false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIndex = 3;
                    });
                  },
                  child: BottomNavItems(
                    icon: Iconsax.setting4,
                    active: bottomIndex == 3 ? true : false,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        children: [
          SizedBox(
            height: res_height * 0.025,
          ),
          Text(
            'Your Balance',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: res_height * 0.025,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CardsScreen(),
                ),
              );
            },
            child: Container(
              height: res_height * 0.125,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiaryContainer,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jan 03, 2024',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "\$20,2403",
                          style: Theme.of(context).textTheme.headlineMedium,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "15%",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(Iconsax.arrow_up)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: res_height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Iconsax.arrow_up_3,
                    color: Theme.of(context).colorScheme.onTertiaryContainer,
                    size: 35.0,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Iconsax.arrow_down4,
                    color: Theme.of(context).colorScheme.onTertiaryContainer,
                    size: 35.0,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Iconsax.milk,
                    color: Theme.of(context).colorScheme.onTertiaryContainer,
                    size: 35.0,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Iconsax.lamp_charge,
                    color: Theme.of(context).colorScheme.onTertiaryContainer,
                    size: 35.0,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: res_height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Activities',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Container(
                width: res_width * 0.25,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'This Week',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const FinanceChart()
        ],
      ),
    );
  }
}
