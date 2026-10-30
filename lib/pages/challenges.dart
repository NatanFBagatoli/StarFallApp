import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        'Challenges'
            .text
            .white
            .bold
            .xl4
            .make(),

      ])
    );
  }
}