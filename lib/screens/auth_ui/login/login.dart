import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerse/widgets/top_titles/top_titles.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowPassword = true;
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
              padding: EdgeInsets.only(left: 10.0),
              child: BackButton(),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const TopTitles(
                title: "Login", subtitle: "Welcome back to SH ecommerce"),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "E-mail",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: TextFormField(
                obscureText: isShowPassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(
                    Icons.key,
                  ),
                  suffixIcon: CupertinoButton(
                    onPressed: () {
                      setState(() {
                        isShowPassword = !isShowPassword;
                        // print(isShowPassword);
                      });
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
