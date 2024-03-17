import 'package:flutter/material.dart';
import 'package:rpg_dart/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Your Characters Here Gang'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const StyledText('This is the Text'),
          const StyledHeading('this is heading'),
          const StyledTitle('this is the Title '),
          FilledButton(
            onPressed: () {
              // navigate to the create screen
            },
            child: const Text('Create New'),
          ),
        ]),
      ),
    );
  }
}
