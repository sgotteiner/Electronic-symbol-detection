import 'package:electric_circuit_detection/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:electric_circuit_detection/widgets/selected_image.dart';
import 'package:electric_circuit_detection/widgets/pick_image_button.dart';
import '../widgets/home_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String imagePath = "";
  final ImagePicker _picker = ImagePicker();

  void openImagePicker() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imagePath = image!.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const HomeTitle(),
        SelectedImage(
          filePath: imagePath,
        ),
        PickImageButton(
          onPressed: openImagePicker,
        ),
        Flexible(
          child: ListView(
            children: const [
              ListItem(
                text: 'Resistor',
                imageUrl:
                    'https://res.cloudinary.com/rsc/image/upload/w_1024/R1995064-01',
              ),
              ListItem(
                text: 'Resistor',
                imageUrl:
                    'https://res.cloudinary.com/rsc/image/upload/w_1024/R1995064-01',
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
