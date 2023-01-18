import 'package:flutter/material.dart';
import 'package:learning_app/models/item_model.dart';
import '../components/list_item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);
  final List<Item> familyMembers = const [
    Item(
        sound: 'assets/sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Otōsan',
        enName: 'Father'),
    Item(
        sound: 'assets/sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    Item(
        sound: 'assets/sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'Grand father'),
    Item(
        sound: 'assets/sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Shi',
        enName: 'Mother'),
    Item(
        sound: 'assets/sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Go',
        enName: 'Grand mother'),
    Item(
        sound: 'assets/sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ruko',
        enName: 'Older brother'),
    Item(
        sound: 'assets/sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Sebun',
        enName: 'Older sister'),
    Item(
        sound: 'assets/sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'ichi',
        enName: 'Son'),
    Item(
        sound: 'assets/sounds/family_members/younger brother.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ichi',
        enName: 'Younger brother'),
    Item(
        sound: 'assets/sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'ichi',
        enName: 'Younger sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Family members'),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (covariant, index) {
          return ListItem(
            number: familyMembers[index],
            color: const Color(0xff376F00),
          );
        },
      ),
    );
  }
}
