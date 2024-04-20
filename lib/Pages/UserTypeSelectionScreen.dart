/*import 'package:flutter/material.dart';

class UserTypeSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, "HomePage");
          },
        ),
    
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
             Text(
              'User Type',
                style: TextStyle(
                fontSize: 25,
       
               color: Colors.deepPurpleAccent,
                ),
                ),        
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "LoginPage");
              },
              child: Text('I am a Tenant'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'LoginPage');
              },
              child: Text('I am a Landlord'),
            ),
          ],
        ),
      ),
    );
  }
}
*/