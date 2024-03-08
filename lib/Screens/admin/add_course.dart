import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({super.key});

  @override
  State<AddCourse> createState() => _AddCourseState();
}

final _formkey = GlobalKey<FormState>();

class _AddCourseState extends State<AddCourse> {
  final TextEditingController _titleInput = TextEditingController();
  final TextEditingController _descriptionInput = TextEditingController();
  final TextEditingController _youTubeIDInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title: subHeading('Add Course', Colors.white),
          centerTitle: true,
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: myGradient())),
        ),
        body: Column(
          children: [
            Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heading1("Course Details", secondaryColor),
                      sizeBox(0, 15),
                      TextFormField(
                        controller: _titleInput,
                        decoration: inputStyle('Title', 'Enter Course Title'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Title';
                          }
                          return null;
                        },
                      ),
                      sizeBox(0, 15),
                      TextFormField(
                        controller: _descriptionInput,
                        decoration:
                            inputStyle('Description', 'Enter Description'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Description';
                          }
                          return null;
                        },
                        maxLines: 3,
                      ),
                      sizeBox(0, 15),
                      TextFormField(
                        controller: _youTubeIDInput,
                        decoration:
                            inputStyle('YouTube ID', 'Enter YouTube Course ID'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter YouTube ID';
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
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.black12),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      _titleInput.text,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    subtitle: Text(_descriptionInput.text),
                                    trailing: Text(_youTubeIDInput.text),
                                  ),
                                ),
                              ));
                            }
                          })
                      // ElevatedButton(
                      //     style: const ButtonStyle(
                      //         backgroundColor:
                      //             MaterialStatePropertyAll(Color(0xFFE531E9))),
                      //     onPressed: () {
                      //       if (_formkey.currentState!.validate()) {
                      //         ScaffoldMessenger.of(context)
                      //             .showSnackBar(SnackBar(
                      //           content: Container(
                      //             margin:
                      //                 const EdgeInsets.symmetric(vertical: 5),
                      //             decoration: BoxDecoration(
                      //               color: Colors.white,
                      //               border: Border.all(
                      //                   width: 1, color: Colors.black12),
                      //               borderRadius: BorderRadius.circular(8),
                      //             ),
                      //             child: ListTile(
                      //               title: Text(
                      //                 _titleInput.text,
                      //                 style: const TextStyle(
                      //                     fontWeight: FontWeight.w600),
                      //               ),
                      //               subtitle: Text(_descriptionInput.text),
                      //               trailing: Text(_youTubeIDInput.text),
                      //             ),
                      //           ),
                      //         ));
                      //       }
                      //     },
                      //     child: const Text(
                      //       "Add",
                      //       style: TextStyle(color: Colors.white),
                      //     ))
                    ],
                  ),
                ))
          ],
        ));
  }
}
