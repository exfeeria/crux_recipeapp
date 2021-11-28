import 'package:flutter/material.dart';
import 'package:flutter_recipe_abgleich/components/Button.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/coffee.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "커피",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "집에서 커피 만들어 보자",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          TextButton(
            child: Text('커피 레시피'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => description1()),
              );
            },
          ),
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/burger.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '버거',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "집에서 버거 만들어 보자",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          TextButton(
            child: Text('버거 레시피'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => description2()),
              );
            },
          ),
          //Button1(),
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/pizza.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "피자",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "집에서 피자 만들어 보자",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          TextButton(
            child: Text('피자 레시피'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => description1()),
              );
            },
          ),
        ],
      ),
    );
  }
}
