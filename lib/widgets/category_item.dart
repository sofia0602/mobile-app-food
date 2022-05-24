import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgURL;

  CategoryItem(this.id, this.title, this.imgURL);

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
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Positioned(
          bottom: 10,
          right: 5,
          child: Container(
            width: 300,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black54,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 255, 251, 0),
              ),
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imgURL),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
