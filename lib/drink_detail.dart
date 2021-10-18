import 'package:cocktail/main.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  const DrinkDetail({Key? key, @required this.drink}) : super(key: key);
  final drink;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [myClr, Colors.orange]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(drink['strDrink']),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: drink["idDrink"],
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(
                    drink["strDrinkThumb"],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "ID: ${drink["idDrink"]} ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "${drink["strDrink"]} ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
