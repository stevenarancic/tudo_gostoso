import 'package:flutter/material.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/screens/home/widgets/details.dart';
import 'package:tudo_gostoso/style.dart';

class Home extends StatelessWidget {
  final recipe = Recipe(
    name: "Bolo Gelado",
    photo: "assets/images/bolo.jpg",
    preparationTime: 30,
    numberOfFavorites: 212,
    numberOfComments: 5234,
    yield: 8,
    ingredientsPaste: [],
    ingredientsTopping: [],
    preparationModePaste: [],
    preparationModeTopping: [],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeTheme,
        title: Text(
          "Tudo Gostoso",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Image.asset("assets/images/logo.jpg"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/bolo.jpg"),
            Details(recipe),
          ],
        ),
      ),
    );
  }
}
