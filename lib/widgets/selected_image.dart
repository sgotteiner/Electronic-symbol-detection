import 'dart:io';

import 'package:flutter/material.dart';

class SelectedImage extends StatelessWidget {
  final String filePath;
  const SelectedImage({Key? key, this.filePath = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return filePath != ""
        ? Center(
            child: Image.file(
              File(filePath),
              height: deviceSize.height * 0.6,
            ),
          )
        : Container();
  }
}
