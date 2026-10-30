import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const StarFallApp());
}

class StarFallApp extends StatelessWidget {
  const StarFallApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'STAR:FALL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
