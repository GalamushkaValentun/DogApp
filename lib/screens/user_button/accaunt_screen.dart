import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  bool isVaccinated = false;
  bool isVetVisitDone = false;
  bool isProcedureDone = false;

  Future<void> _pickImage(ImageSource source) async {
    final XFile? selectedImage = await _picker.pickImage(source: source);
    if (selectedImage != null) {
      setState(() {
        _image = selectedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Аккаунт'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => _showImageSourceActionSheet(context),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: _image == null
                        ? const AssetImage('lib/images/add_photo.jpg')
                        : FileImage(File(_image!.path)) as ImageProvider,
                  ),
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Порода',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Вік',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Вага',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Медичні дані',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text('Вакцинація'),
                    subtitle: const Text('Наступна вакцинація: 12/06/2024'),
                    trailing: Checkbox(
                      value: isVaccinated,
                      onChanged: (bool? value) {
                        setState(() {
                          isVaccinated = value ?? false;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Останній візит до ветеринара'),
                    subtitle: const Text('Візит: 01/05/2024'),
                    trailing: Checkbox(
                      value: isVetVisitDone,
                      onChanged: (bool? value) {
                        setState(() {
                          isVetVisitDone = value ?? false;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Медичні процедури'),
                    subtitle: const Text('Наступна процедура: 15/07/2024'),
                    trailing: Checkbox(
                      value: isProcedureDone,
                      onChanged: (bool? value) {
                        setState(() {
                          isProcedureDone = value ?? false;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showImageSourceActionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Галерея'),
                onTap: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Камера'),
                onTap: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
