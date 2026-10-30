import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        'Register'
            .text
            .white
            .bold
            .xl4
            .make(),

      ])
    );
  }
}