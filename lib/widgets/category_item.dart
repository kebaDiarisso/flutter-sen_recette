import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  CategoryItem(this.id, this.title, this.image);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          Container(
            height: 80,
            margin: EdgeInsets.all(5),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
