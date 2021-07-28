import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/style.dart';

class Details extends StatelessWidget {
  final Recipe _recipeObj;

  Details(this._recipeObj);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: orangeTheme,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Text(
            _recipeObj.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidClock,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 3,
                      ),
                      child: Text(
                        "PREPARO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "${_recipeObj.preparationTime} MIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.cheese,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 3,
                      ),
                      child: Text(
                        "RENDIMENTO",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "${_recipeObj.yield} PORÇÕES",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 3,
                      ),
                      child: Text(
                        "FAVORITOS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "${_recipeObj.numberOfFavorites}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidCommentAlt,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 3,
                      ),
                      child: Text(
                        "COMENTÁRIOS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "${_recipeObj.numberOfComments}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
