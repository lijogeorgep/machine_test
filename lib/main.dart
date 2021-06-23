import 'package:flutter/material.dart';
import 'package:machinetest/Presentation/screens/HomePage.dart';
void main()=>runApp(EcommerceApp());
class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}


