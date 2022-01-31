import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  InfoItem(this.Title, this.Value);

  // ignore: non_constant_identifier_names
  final String Title;
  // ignore: non_constant_identifier_names
  final String Value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(Title)
      ],
    );
  }
}
