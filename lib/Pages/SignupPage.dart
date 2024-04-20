import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isChecked = false;
  bool _isButtonDisabled = true;

  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value!;
      _isButtonDisabled = !_isChecked; // Enable button when checkbox is checked
    });
  }

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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: _toggleCheckbox,
                ),
                Text('I agree to the terms and conditions'),
              ],
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: _isButtonDisabled ? null : () {
                // Implement signup logic
              },
              child: Text('Sign Up'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "LoginPage");
              },
              child: Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
