import 'package:flutter/material.dart';

class TopTitles extends StatelessWidget {
  final String title, subtitle;
  const TopTitles({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kToolbarHeight + 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
