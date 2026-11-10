import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class QuestsPage extends StatelessWidget {
  const QuestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack(['Quests'.text.white.bold.xl4.make(), HStack([])]),
    );
  }
}
