Future _getImageFromCamera() async {
  final pickedFile = await _picker.pickImage(source: ImageSource.camera);

  setState(() {
    _image = File(pickedFile.path);
  });
}

Future _getImageFromGallery() async {
  final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

  setState(() {
    _image = File(pickedFile.path);
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("VehicleRegistration"),
    ),
    body: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 300,
                child: _image == null
                    ? Text('No image selected.')
                    : Image.file(_image)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: _getImageFromCamera, //カメラから画像を取得
                tooltip: 'Pick Image From Camera',
                child: Icon(Icons.add_a_photo),
              ),
              FloatingActionButton(
                onPressed: _getImageFromGallery, //ギャラリーから画像を取得
                tooltip: 'Pick Image From Gallery',
                child: Icon(Icons.photo_library),
              ),
            ],
          ),
          TextButton(
            child: const Text("HomePageに遷移する"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
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
        ],
      ),
    ),
  );
}

class VehicleRegistrationPage extends StatelessWidget {
  File _image;
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VehicleRegistration"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text("HomePageに遷移する"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
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
          ],
        ),
      ),
    );
  }
}
