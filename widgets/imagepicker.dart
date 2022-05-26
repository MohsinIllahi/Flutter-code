import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImagePickerwidget extends StatefulWidget {
  const ImagePickerwidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerwidget> createState() => _ImagePickerwidgetState();
}

class _ImagePickerwidgetState extends State<ImagePickerwidget> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image Picker'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.grey.shade200,
                child: Center(
                  child: Text('Image not picked'),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    final XFile? photo =
                        await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      file = photo;
                    });
                    print('Image Picked');
                  },
                  child: Text('Pick Image')),
            ],
          ),
        ));
  }
}
