/*import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 1; i < 8;i++)//bellow to 8 box
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal:10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(//i change to picture in loop
                      "images/$i.jpg",
                      width: 30,
                      height: 40,
                    ),
                    Text(
                      "Vila",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ));
  }
}
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> categories = ["Vila", "Apartment", "Shared Room", "Conduminum", "Office", "", "Studio"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Set a fixed height for the container
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 120, // Set a fixed width for each item
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/${index + 1}.jpg", // Adjust the index for the image name
                  width: 50, // Adjust the size as needed
                  height: 50,
                ),
                Text(
                  categories[index], // Use the category name from the list
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
*/
/*import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 1; i < 8;i++)//bellow to 8 box
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal:10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(//i change to picture in loop
                      "images/$i.jpg",
                      width: 30,
                      height: 40,
                    ),
                    Text(
                      "Vila",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ));
  }
}*/
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> categories = ["Vila", "Apartment", "Shared Room", "Conduminum", "Office", "Studio"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Set a fixed height for the container
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 120, // Set a fixed width for each item
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/${index + 1}.jpg", // Adjust the index for the image name
                  width: 50, // Adjust the size as needed
                  height: 50,
                ),
                Text(
                  categories[index], // Use the category name from the list
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
