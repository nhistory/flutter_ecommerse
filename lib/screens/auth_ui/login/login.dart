import 'package:flutter/material.dart';
import 'package:flutter_ecommerse/constants/asset_images.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: kToolbarHeight,
          ),
          const Text("Welcome"),
          const SizedBox(
            height: 12,
          ),
          const Text("Buy any item from ecommerce app"),
          Image.asset(AssetsImages.instance.welcomeImage)
        ],
      ),
    );
  }
}
