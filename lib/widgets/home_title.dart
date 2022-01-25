import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Electric Circuit Detection',
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
