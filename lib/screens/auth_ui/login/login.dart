import 'package:flutter/material.dart';
import 'package:flutter_ecommerse/widgets/top_titles/top_titles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: kToolbarHeight,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: BackButton(),
            ),
            SizedBox(
              height: 12.0,
            ),
            TopTitles(title: "Login", subtitle: "Welcome back to SH ecommerce")
          ],
        ),
      ),
    );
  }
}
