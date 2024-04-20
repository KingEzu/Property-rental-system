import 'package:flutter/material.dart';

class FavorioteAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text("Favorite",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))),
      ]),
    );
  }
}
