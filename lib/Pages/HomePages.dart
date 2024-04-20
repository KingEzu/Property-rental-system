import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/widgets/CategoriesWidget.dart';
import 'package:flutter_application_1/widgets/HomeAppBar.dart';
import 'package:flutter_application_1/widgets/ItemsWidget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
           // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 239, 239),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
             child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
             padding: EdgeInsets.symmetric(horizontal: 15),
             height: 50,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
             ),
             child: Row(              
              children: [
                Container(
                  
                  margin: EdgeInsets.only(left: 5),
                  height: 35,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search address...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      )

                    ),
                    
              
                  )

                ),
         
                           

             ],),

            ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Catagories",
                  style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),
                ),
          ),
            
            
            //catagories
            CategoriesWidget(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              child: Text(
                "Rent",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),
              ),
            ),
            SizedBox(height: 30.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Image.asset(
                          "images/2.jpg",
                          height: 200,
                          width: 200,
                          fit: BoxFit.fill,
                        
                        ),
                        Text("G+3 Bole",),
                        Text("Description",),
                      ],)
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Image.asset(
                        "images/2.jpg",
                        height: 200,
                        width: 200,
                        fit: BoxFit.fill,
                      
                      ),
                      Text("G+3 Bole",),
                      Text("Description",),
                    ],)
                  ),
                ),
                ],
            ),
            ),
            ItemWidget(),
            
            ],
            
            
  
          ),
          ),
       
        ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {},
          color: Colors.cyan,
          backgroundColor: Colors.transparent,
          height: 70, 
          items:[         
            Icon(
              Icons.home,
              size: 30,
              color: Colors.black,),
            Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.black,),
            Icon(
              Icons.message_outlined,
              size: 30,
              color: Colors.black,),
            Icon(
              Icons.payment,
              size: 30,
              color: Colors.black,),  
              
          ],
        ),
      );
}
}

