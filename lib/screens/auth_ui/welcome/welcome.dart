import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerse/constants/asset_images.dart';
import 'package:flutter_ecommerse/constants/routes.dart';
import 'package:flutter_ecommerse/screens/auth_ui/login/login.dart';
import 'package:flutter_ecommerse/widgets/primary_button/primary_button.dart';
import 'package:flutter_ecommerse/widgets/top_titles/top_titles.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: kToolbarHeight + 30,
            ),
            const TopTitles(
                title: "Welcome", subtitle: "Buy items from SH ecommerce"),
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
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: PrimaryButton(
                title: "Log In",
                onPressed: () {
                  Routes.instance.push(widget: const Login(), context: context);
                },
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: PrimaryButton(
                title: "Sign Up",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
