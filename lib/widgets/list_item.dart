import 'package:flutter/cupertino.dart';

class ListItem extends StatelessWidget {
  final String text;
  final String? imageUrl;
  const ListItem({Key? key, this.text = "", this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Image.network(
            imageUrl!,
            width: 64,
            height: 64,
          ),
          Text(text),
        ],
      ),
    );
  }
}
