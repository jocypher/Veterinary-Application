import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veterinary_app/provider/selectedFileProvider.dart';

import '../../utils/global_variables.dart';
import '../services/upload_services.dart';

// ignore: must_be_immutable
class UploadWidget extends StatefulWidget {
  final String text;
  TextEditingController textEditingController = TextEditingController();

  UploadWidget(
      {super.key, required this.textEditingController, required this.text});

  @override
  State<UploadWidget> createState() => _UploadWidgetState();
}

class _UploadWidgetState extends State<UploadWidget> {
  void resetTextField() {
    setState(() {
      widget.textEditingController.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          decoration:
              const BoxDecoration(color: Color.fromRGBO(232, 233, 237, 1)),
          child: TextField(
              controller: widget.textEditingController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              )),
        ),
      ],
    );
  }
}

class chooseFile extends StatefulWidget {
  const chooseFile({super.key});

  @override
  State<chooseFile> createState() => _chooseFileState();
}

class _chooseFileState extends State<chooseFile> {
  File? fileToDisplay;
    
Future<void> pickFile() async {
    FilePickerResult? pickerResult = await FilePicker.platform.pickFiles();
    if (pickerResult != null) {
      PlatformFile file = pickerResult.files.first;
        setState(() {
        fileToDisplay = File(file.path!);
      });
      // ignore: use_build_context_synchronously
      Provider.of<SelectedFileProvider>(context, listen: false).updateFilePath(file.path!);
      print(file.name);
      print(file.path);
    }
  }
    Future<void> openSelectedFile() async {
    if (fileToDisplay != null) {

      
    }
  }
  

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Choose File: "),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: GestureDetector(
                 onTap: openSelectedFile
                ,
                child: Container(
                  height: 49,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(232, 233, 237, 1),
                  ),
                  child: fileToDisplay != null
                      ? Text(fileToDisplay.toString())
                      : const Icon(Icons.file_copy),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  width: 40,
                  color: const Color.fromRGBO(33, 94, 190, 1),
                  child: TextButton(
                      onPressed: () {
                        pickFile();
                      },
                      child: const Text(
                        'select',
                        style: TextStyle(color: primaryColor),
                      )),
                ))
          ],
        ),
      ],
    );
  }
}

class resetBtn extends StatelessWidget {
  final VoidCallback resetButton;
  const resetBtn({super.key, required this.resetButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(45, 7, 45, 7),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(33, 94, 190, 1),
          borderRadius: BorderRadius.circular(30)),
      child: GestureDetector(
        onTap: resetButton,
        child: const Text('Reset', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
class uploadBtn extends StatefulWidget {
  const uploadBtn({super.key});

  @override
  State<uploadBtn> createState() => _uploadBtnState();
}

class _uploadBtnState extends State<uploadBtn> {
  final TextEditingController titleTextEditingController =
      TextEditingController();
    String? slideFile;
  final _uploadSlideKey = GlobalKey<FormState>();
  final uploadInfos = UploadInformation();


  void uploadSlide() {
    final selectedFilePath = Provider.of<SelectedFileProvider>(context, listen: false).filePath;
    if (selectedFilePath != null) {
      uploadInfos.UploadSlides(
        context: context,
        title: titleTextEditingController.text,
        fileName: selectedFilePath,
      );
    } else {
      print("No file selected or validation failed.");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(45, 7, 45, 7),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(33, 94, 190, 1),
          borderRadius: BorderRadius.circular(30)),
      child: GestureDetector(
        onTap: uploadSlide,
        child: const Text(
          'Upload',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}