import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class QuestsPage extends StatelessWidget {
  const QuestsPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        'Quests'.text.white.bold.xl4.make(),
  HStack([
    "Quest 1".text.white.bold.xl.make(),
    "+50 XP e 200 coins".text.white.bold.xl.make(),

  ]),
  8.heightBox,
  "Derrote 5 bandidos".text.white.bold.xl.make(),
  
      ])
    );
  }
}