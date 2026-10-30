import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        'Login'
            .text
            .white
            .bold
            .xl4
            .make(),

      ])
    );
  }
}