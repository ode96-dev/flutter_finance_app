import 'package:finance_app/widgets/transactions_history_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    final resHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cards'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Iconsax.more4,
              size: 25.0,
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
        ),
        children: [
          SizedBox(
            height: resHeight * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You Cards',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'You have 5 cards on the platform',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              MaterialButton(
                elevation: 1.2,
                onPressed: null,
                color: Theme.of(context).colorScheme.tertiaryContainer,
                textColor: Theme.of(context).colorScheme.onTertiaryContainer,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(8.0),
                minWidth: 0.0,
                child: const Icon(
                  Iconsax.add4,
                  size: 30.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Iconsax.card,
                    size: 40.0,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "4242 4242 4242 4242",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    'Dev Ode',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: resHeight * 0.01,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Expiry Date',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            '24/24',
                            style: Theme.of(context).textTheme.titleSmall,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          const TransactionHistoryItem(
            type: true,
            title: 'KFC',
            icon: Icons.food_bank_rounded,
            date: '03 Jan 2024',
            amount: '-\$300',
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          const TransactionHistoryItem(
            type: true,
            title: 'Uber',
            icon: Icons.food_bank_rounded,
            date: '03 Jan 2024',
            amount: '-\$30',
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          const TransactionHistoryItem(
            type: false,
            title: 'Standard Chartered Bank',
            icon: Iconsax.bank,
            date: '03 Jan 2024',
            amount: '+\$12,000',
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          const TransactionHistoryItem(
            type: true,
            title: 'Car Garage',
            icon: Iconsax.bank,
            date: '03 Jan 2024',
            amount: '-\$500',
          ),
        ],
      ),
    );
  }
}
