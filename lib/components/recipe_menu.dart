import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_recipe_abgleich/components/Button.dart';
import 'package:flutter_recipe_abgleich/components/search.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          /*_buildMenuItem(Icons.food_bank, "ALL"),
          SizedBox(width: 4),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 4),
          _buildMenuItem(Icons.fastfood, "Burger"),
          SizedBox(width: 4),
          _buildMenuItem(Icons.local_pizza, "Pizza"),*/
          Text("We are TEAM CRUX!(시험판)"),
          SizedBox(width: 4),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              icon: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              )),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
