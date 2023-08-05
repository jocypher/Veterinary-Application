import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


import '../../utils/global_variables.dart';
import '../upload_widgets/upload_widgets.dart';

class UploadSlidePage extends StatefulWidget {
  const UploadSlidePage({super.key});

  @override
  State<UploadSlidePage> createState() => _UploadSlidePageState();
}

class _UploadSlidePageState extends State<UploadSlidePage> {
  final TextEditingController titleTextEditingController =
      TextEditingController();

  

  @override
  void dispose() {
    super.dispose();
    titleTextEditingController.dispose();

  }

   void resetButton(){
    setState(() {
      titleTextEditingController.text = '';
    });
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
                const Text("Provide the following details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                const SizedBox(height: 30,),
                UploadWidget(text: "Title: ", textEditingController: titleTextEditingController),
                const SizedBox(height: 15),
                const chooseFile(),
                const SizedBox(height: 200),
                 uploadBtn(resetButton: resetButton,)
              ],
            ),
          )),
    );
  }
}
