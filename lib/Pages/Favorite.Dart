import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/FavoriteItem.dart';

class FavoritePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:ListView(
        children: [
          FavorioteAppBar(),

          Container(
            height: 700,
            padding: EdgesInsets.only(top:15),
            decoration: BoxDeoration(
              color: Color.fromARGB(255, 240, 239, 239),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),

            ),
          ),
          FavoriteItem(),

        ]

        
      )
    )
  }
}