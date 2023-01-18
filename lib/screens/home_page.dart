import 'package:flutter/material.dart';
import 'package:learning_app/components/category_item.dart';
import 'package:learning_app/screens/colors_page.dart';
import 'package:learning_app/screens/family_members_page.dart';
import 'package:learning_app/screens/numbers_page.dart';
import 'package:learning_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Learn App'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            categoryName: 'Numbers',
            backgroundColor: const Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMembers();
              }));
            },
            categoryName: 'Family members',
            backgroundColor: const Color(0xff376F00),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsPage();
              }));
            },
            categoryName: 'Colors',
            backgroundColor: const Color(0xff7A00CA),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PhrasesPage();
              }));
            },
            categoryName: 'Phrases',
            backgroundColor: const Color(0xff00BFFF),
          ),
        ],
      ),
    );
  }
}
