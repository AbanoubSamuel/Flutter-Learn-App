import 'package:learning_app/components/list_item.dart';
import 'package:learning_app/models/item_model.dart';
import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Item> colorTypes = const [
    Item(
        sound: 'assets/sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Otōsan',
        enName: 'Black'),
    Item(
        sound: 'assets/sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Musume',
        enName: 'Brown'),
    Item(
        sound: 'assets/sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Ojīsan',
        enName: 'Dusty Yellow'),
    Item(
        sound: 'assets/sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Shi',
        enName: 'Gray'),
    Item(
        sound: 'assets/sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Go',
        enName: 'Green'),
    Item(
        sound: 'assets/sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Ruko',
        enName: 'Red'),
    Item(
        sound: 'assets/sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Sebun',
        enName: 'White'),
    Item(
        sound: 'assets/sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'ichi',
        enName: 'Yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colorTypes.length,
        itemBuilder: (covariant, index) {
          return ListItem(
            number: colorTypes[index],
            color: const Color(0xff7A00CA),
          );
        },
      ),
    );
  }
}
