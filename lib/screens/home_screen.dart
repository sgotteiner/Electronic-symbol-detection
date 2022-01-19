import 'package:flutter/material.dart';
import '../widgets/home_image.dart';
import '../widgets/home_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [HomeTitle(), HomeImage()],
      ),
    );
  }
}
