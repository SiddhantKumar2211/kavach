import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kavach/pages/signin.dart';

class InitiationScreen extends StatefulWidget {
  const InitiationScreen({super.key});

  @override
  State<InitiationScreen> createState() => _InitiationScreenState();
}

class _InitiationScreenState extends State<InitiationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return SignIn();
              }));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff4c505b),
            ),
            child: Text(
              'SignOut',
              textAlign: TextAlign.left,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  backgroundColor: Color(0xff4c505b),
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
