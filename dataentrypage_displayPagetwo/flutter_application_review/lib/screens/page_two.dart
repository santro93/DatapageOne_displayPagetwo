import 'package:flutter/material.dart';
import 'package:flutter_application_review/screens/page_one.dart';

class PageTwo extends StatefulWidget {
  final Function(String) ontext;
  PageTwo({Key? key, required this.ontext});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Review App"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                      hintText: "Enter Anything that u want to"),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      widget.ontext(textController.text);
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text("Back Page"))
              ],
            ),
          ),
        ));
  }
}
