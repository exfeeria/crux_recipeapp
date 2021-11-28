//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_recipe_abgleich/components/recipe_list_item.dart';
import 'package:flutter_recipe_abgleich/components/recipe_menu.dart';
import 'package:flutter_recipe_abgleich/components/recipe_title.dart';
import 'package:flutter_recipe_abgleich/components/Button.dart';
import 'package:flutter_recipe_abgleich/components/recipe_menu.dart';
import 'package:flutter_recipe_abgleich/components/recipe_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_recipe_abgleich/components/search.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            //Button1(),
            RecipeListItem("burger", "Made Burger"),
            //Button2(),
            RecipeListItem("pizza", "Made Pizza"),
            //Button3(),
          ],
        ),
      ),
    );
  }
}

AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0,
    actions: [
      /*IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.search,
            color: Colors.black,
          )),*/

      /*Icon(
        CupertinoIcons.search,
        color: Colors.black,
      ),*/
      Text("요리 앱 시험 판"),
      SizedBox(width: 15),
      Icon(CupertinoIcons.heart, color: Colors.redAccent),
      SizedBox(width: 15),
    ],
  );
}
