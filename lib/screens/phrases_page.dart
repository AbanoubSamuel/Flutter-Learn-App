import 'package:flutter/material.dart';
import '../components/phrase_item.dart';
import '../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Item> Phrases = const [
    Item(
        sound: 'assets/sounds/colors/black.wav',
        jpName: 'Otōsan',
        enName: 'Black'),
    Item(
        sound: 'assets/sounds/colors/brown.wav',
        jpName: 'Musume',
        enName: 'Brown'),
    Item(
        sound: 'assets/sounds/colors/dusty yellow.wav',
        jpName: 'Ojīsan',
        enName: 'Dusty Yellow'),
    Item(sound: 'assets/sounds/colors/gray.wav', jpName: 'Shi', enName: 'Gray'),
    Item(
        sound: 'assets/sounds/colors/green.wav', jpName: 'Go', enName: 'Green'),
    Item(sound: 'assets/sounds/colors/red.wav', jpName: 'Ruko', enName: 'Red'),
    Item(
        sound: 'assets/sounds/colors/white.wav',
        jpName: 'Sebun',
        enName: 'White'),
    Item(
        sound: 'assets/sounds/colors/yellow.wav',
        jpName: 'ichi',
        enName: 'Yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: Phrases.length,
        itemBuilder: (covariant, index) {
          return PhraseItem(
            number: Phrases[index],
            color: const Color(0xff00BFFF),
          );
        },
      ),
    );
  }
}
