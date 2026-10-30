import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        'STAR:FALL'
            .text
            .white
            .bold
            .xl4
            .make(),

      ])
    );
  }
}