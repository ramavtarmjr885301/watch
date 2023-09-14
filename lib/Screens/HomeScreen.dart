import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Sign Out Function
_signOut()async{
  await FirebaseAuth.instance.signOut();
  await GoogleSignIn().signOut();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watch"),
        centerTitle: true,
        leading: Icon(CupertinoIcons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40, right: 20),
        child: FloatingActionButton(
          onPressed: () {
            _signOut();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
