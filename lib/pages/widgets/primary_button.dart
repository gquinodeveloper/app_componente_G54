import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(title),
    );
  }
}
