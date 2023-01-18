import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.categoryName, this.backgroundColor, this.onTap});

  String? categoryName;
  Color? backgroundColor;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        color: backgroundColor,
        width: double.infinity,
        height: 65,
        child: Text(
          categoryName!,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
