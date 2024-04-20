/*import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),

          ),
          child: Column(
           children: [Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:Text("New",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                )


            ]
           ),
              
            
           InkWell(
            onTap: () {},
            child: Container(
              margin:EdgeInsets.all(10),
              child: Image.asset(
                "images/2.jpg",
                height: 120,
                width: 120,
              ),
            ),            
            ),
            
            Container(
              padding: EdgeInsets.only(bottom: 8),
              alignment: Alignment.centerLeft,
              child: Text( 
                "G+2 Jemo",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),

            Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.bed_outlined,
                  color: Colors.black,
                )
              ],),
        
            ),
      
    


           ],

     
          
          ),
        ),
      ],
    );

  }
}
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(10, (index) => // Generate 10 items for demonstration
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "New",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/2.jpg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "G+2 Jemo",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.bed_outlined,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.bathtub_outlined,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.wc,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  List<bool> _isFavorited = List.generate(10, (_) => false);

  void _toggleFavorite(int index) {
    setState(() {
      _isFavorited[index] = !_isFavorited[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(10, (index) {
        // Generate 10 items for demonstration
        final int bedrooms = 2; // Number of bedrooms
        final int baths = 2; // Number of baths
        final int tubs = 2; // Number of tubs

        return Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "New",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: (_isFavorited[index]
                        ? Icon(Icons.favorite, color: Colors.red)
                        : Icon(Icons.favorite_border, color: Colors.red)),
                    onPressed: () => _toggleFavorite(index),
                  ),
                ],
              
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/2.jpg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "G+2 Jemo",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.bed_outlined,
                      color: Colors.black,
                    ),
                    Text("$bedrooms"), // Display the number of bedrooms
                    Icon(
                      Icons.bathtub_outlined,
                      color: Colors.black,
                    ),
                    Text("$baths"), // Display the number of baths
                    Icon(
                      Icons.wc,
                      color: Colors.black,
                    ),
                    Text("$tubs"), // Display the number of tubs
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}*/
import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  List<bool> _isFavorited = List.generate(10, (_) => false);

  void _toggleFavorite(int index) {
    setState(() {
      _isFavorited[index] = !_isFavorited[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(10, (index) {
        // Generate 10 items for demonstration
        final int bedrooms = 2; // Number of bedrooms
        final int baths = 2; // Number of baths
        final int tubs = 2; // Number of tubs

        return Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "New",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: (_isFavorited[index]
                        ? Icon(Icons.favorite, color: Colors.red)
                        : Icon(Icons.favorite_border, color: Colors.red)),
                    onPressed: () => _toggleFavorite(index),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/2.jpg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "G+2 Jemo",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.bed_outlined,
                      color: Colors.black,
                    ),
                    Text("$bedrooms"), // Display the number of bedrooms
                    Icon(
                      Icons.bathtub_outlined,
                      color: Colors.black,
                    ),
                    Text("$baths"), // Display the number of baths
                    Icon(
                      Icons.wc,
                      color: Colors.black,
                    ),
                    Text("$tubs"), // Display the number of tubs
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
