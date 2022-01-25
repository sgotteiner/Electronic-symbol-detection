import 'package:flutter/material.dart';

class PickImageButton extends StatelessWidget {
  final VoidCallback onPressed;
  const PickImageButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text("Select Image"),
      onPressed: onPressed,
    );
  }
}
