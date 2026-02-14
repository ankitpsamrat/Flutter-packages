import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImgFromGallery extends StatefulWidget {
  const PickImgFromGallery({super.key});

  @override
  State<PickImgFromGallery> createState() => _PickImgFromGalleryState();
}

class _PickImgFromGalleryState extends State<PickImgFromGallery> {
  //
  File? image;

  Future pickImgFromGallery() async {
    try {
      final pickedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );

      if (pickedImage == null) return;
      final imagePath = File(pickedImage.path);

      setState(() {
        image = imagePath;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text('Image picker funcitionality')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                (image == null)
                    ? Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 20),
                        color: Colors.amber,
                      )
                    : Image.file(
                        image!,
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                ElevatedButton(
                  onPressed: () {
                    pickImgFromGallery();
                  },
                  child: Text((image == null) ? 'Pick Image' : 'Image Picked'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
