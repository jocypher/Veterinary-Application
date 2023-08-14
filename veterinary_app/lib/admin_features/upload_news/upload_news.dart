// ignore_for_file: camel_case_types, duplicate_ignore
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../utils/global_variables.dart';
import '../upload_widgets/upload_widgets.dart';

// ignore: camel_case_types
class uploadNewsPage extends StatefulWidget {
  const uploadNewsPage({super.key});

  @override
  State<uploadNewsPage> createState() => _uploadNewsPageState();
}

class _uploadNewsPageState extends State<uploadNewsPage> {
  final TextEditingController titleTextEditingController =
      TextEditingController();
  final TextEditingController authorTextEditingController =
      TextEditingController();
  final TextEditingController pagesTextEditingController =
      TextEditingController();
      final TextEditingController linkTextEditingController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    titleTextEditingController.dispose();
    authorTextEditingController.dispose();
    pagesTextEditingController.dispose();
    linkTextEditingController.dispose();
  }

  void resetButton(){
    titleTextEditingController.text = '';
    authorTextEditingController.text = '';
    pagesTextEditingController.text = '';
    linkTextEditingController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: DottedBorder(
          borderType: BorderType.RRect,
          strokeWidth: 2,
          color: loginColor,
          dashPattern: const [7, 3],
          strokeCap: StrokeCap.square,
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            height: 500,
            width: double.infinity,
            child: Column(
              children: [
                const Text(
                  "Provide the following details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 30,
                ),
                UploadWidget(
                    text: "Title: ",
                    textEditingController: titleTextEditingController),
                const SizedBox(height: 15),
                UploadWidget(
                    text: "Year: ",
                    textEditingController: authorTextEditingController),
                const SizedBox(height: 15),
                UploadWidget(
                    text: "Pages: ",
                    textEditingController: pagesTextEditingController),
                const SizedBox(height: 15),
               LinkFormBox(textEditingController: linkTextEditingController, text: "Upload Link"),
                const SizedBox(height: 30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    resetBtn(resetButton: resetButton,),
                 const uploadBtn()
                   ],)
              ],
            ),
          )),
    );
  }
}
