import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        'Status'
            .text
            .white
            .bold
            .xl4
            .make(),

      ])
    );
  }
}