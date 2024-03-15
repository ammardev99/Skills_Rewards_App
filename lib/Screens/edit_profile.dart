// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

final _formkey = GlobalKey<FormState>();

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _emailI = TextEditingController();
  final TextEditingController _nameI = TextEditingController();
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title: subHeading('Edit Profile', Colors.white),
          centerTitle: true,
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: myGradient())),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: heading("Profile Details", secondaryColor)),
                      sizeBox(0, 15),
                      Stack(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                            maxRadius: 50,
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) => cameraOption());
                                    // print(_imageFile);
                                  },
                                  icon: Icon(Icons.camera_alt_rounded,
                                      color: secondaryColor)))
                        ],
                      ),
                      sizeBox(0, 10),
                      TextFormField(
                        controller: _nameI,
                        decoration: inputStyle('Name', 'Enter Your Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Name';
                          }
                          return null;
                        },
                      ),
                      sizeBox(0, 15),
                      TextFormField(
                        controller: _emailI,
                        decoration: inputStyle('Email', 'Enter Your Email'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Eamil';
                          }
                          return null;
                        },
                      ),
                      sizeBox(0, 20),

                      InkWell(
                        child: Container(
                            width: 320,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                gradient: myGradient()),
                            child: Center(
                                child:
                                    heading("Update Details", Colors.white))),
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1, color: Colors.black12),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ListTile(
                                  title: Text(
                                    _nameI.text,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  subtitle: Text(
                                      _emailI.text + _imageFile.toString()),
                                  trailing: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Color(0xFFE531E9),
                                  ),
                                ),
                              ),
                            ));
                          }
                        },
                      ),

                    ],
                  ),
                ))
          ],
        ));
  }

  Widget cameraOption() {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          sizeBox(0, 10),
          heading("Choose Profile Photo", secondaryColor),
          sizeBox(0, 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: const Icon(Icons.camera_alt_rounded),
              ),
              IconButton(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: const Icon(Icons.file_present_rounded),
              ),
            ],
          )
        ],
      ),
    );
  }
}
