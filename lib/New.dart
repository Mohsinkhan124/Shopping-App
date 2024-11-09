// ignore: file_names
import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Lalchi Insaaan......',
            style: TextStyle(fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Colors.black),),
          )
        ],
      ),
    );
  }
}