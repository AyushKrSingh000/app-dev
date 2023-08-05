import 'package:flutter/material.dart';

import 'item_card.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final data = [
    'assets/images/download.png',
    'assets/images/download (1).png',
    'assets/images/phone.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // const SizedBox(
            //   height: 30,
            // ),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Padding(
            //     padding: const EdgeInsets.only(right: 20),
            //     child: ElevatedButton(
            //       onPressed: () {},
            //       child: Text('Hello World'),
            //     ),
            //   ),
            // ),
            // Flex(direction: direction)
            //Wrap()
            //GridView(),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => Center(
                  child: Text(
                    index.toString(),
                  ),
                ),
                // itemBuilder: (context, index) => Center(
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: ItemCard(
                //       title: data[index],
                //     ),
                //   ),
                // ),
                itemCount: 100,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                // itemBuilder: (context, index) => Center(
                //   child: Text(
                //     index.toString(),
                //   ),
                // ),
                itemBuilder: (context, index) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemCard(
                      title: data[index],
                    ),
                  ),
                ),
                itemCount: data.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
