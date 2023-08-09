import 'package:flutter/material.dart';

import '../../utils/global_variables.dart';

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

class chooseFile extends StatelessWidget {
  const chooseFile({super.key});

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
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(232, 233, 237, 1)),
                child: const TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                )),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  width: 40,
                  color: const Color.fromRGBO(33, 94, 190, 1),
                  child: TextButton(
                      onPressed: () {},
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

class uploadBtn extends StatelessWidget {
  final VoidCallback resetButton;
  const uploadBtn({super.key, required this.resetButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(45, 7, 45, 7),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(33, 94, 190, 1),
              borderRadius: BorderRadius.circular(30)),
          child: GestureDetector(
            onTap: resetButton,
            child: const Text('Reset', style: TextStyle(color: Colors.white)),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(45, 7, 45, 7),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(33, 94, 190, 1),
              borderRadius: BorderRadius.circular(30)),
          child: GestureDetector(
            child: const Text(
              'Upload',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
