import 'package:flutter/material.dart';
import 'package:rpg_dart/screens/home/character_card.dart';
import 'package:rpg_dart/shared/styled_button.dart';
import 'package:rpg_dart/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List character = ['mario', 'luigi', 'peach', 'toad', 'ninja', 'jonny'];
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
          Expanded(
            child: ListView.builder(
                itemCount: character.length,
                itemBuilder: (_, index) {
                  return CharacterCard(character[index]);
                }),
          ),
          Styledbutton(
            onPressed: () {
              // navigate to the create screen
            },
            child: const StyledHeading('Create New'),
          ),
        ]),
      ),
    );
  }
}
