import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerse/constants/asset_images.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: kToolbarHeight,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                "Buy any item from ecommerce app",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Center(
              child: Image.asset(
                AssetsImages.instance.welcomeImage,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    Icons.facebook,
                    size: 50,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    AssetsImages.instance.googleLogo,
                    scale: 19,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
