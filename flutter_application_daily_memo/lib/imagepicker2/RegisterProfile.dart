import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterProfile extends StatefulWidget {
  // const RegisterProfile({Key key}) : super(key: key);

  @override
  _RegisterProfileState createState() => _RegisterProfileState();
}

class _RegisterProfileState extends State {
  late File _image;
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 81, left: 35, right: 35),
                child: const Text(
                  '最後に、\nプロフィール写真を設定しましょう！',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                  width: 150,
                  height: 150,
                  margin: const EdgeInsets.only(top: 90),
                  child: _displaySelectionImageOrGrayImage()),
              Container(
                width: 144,
                height: 50,
                margin: const EdgeInsets.only(top: 47),
                decoration: BoxDecoration(
                  color: const Color(0xfffa4269),
                  border: Border.all(
                    width: 2,
                    color: const Color(0xff000000),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () => _getImageFromGallery(),
                  child: const Text(
                    '写真を選ぶ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(child: _displayInSelectedImage())
        ],
      ),
    );
  }

  Widget _displaySelectionImageOrGrayImage() {
    if (_image == null) {
      return Container(
        decoration: BoxDecoration(
          color: const Color(0xffdfdfdf),
          border: Border.all(
            width: 2,
            color: const Color(0xff000000),
          ),
          borderRadius: BorderRadius.circular(75),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color(0xff000000),
          ),
          borderRadius: BorderRadius.circular(75),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(75),
          child: Image.file(
            _image,
            fit: BoxFit.fill,
          ),
        ),
      );
    }
  }

  Widget _displayInSelectedImage() {
    if (_image == null) {
      return Column();
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20, right: 20),
              child: InkWell(
                child: Image.asset(
                  'assets/images/ic_send.png',
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

  Future _getImageFromGallery() async {
    final _pickedFile = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (_pickedFile != null) {
        _image = File(_pickedFile.path);
      }
    });
  }
}
