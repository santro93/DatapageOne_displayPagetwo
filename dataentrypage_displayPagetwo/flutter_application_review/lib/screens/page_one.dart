import 'package:flutter/material.dart';
import 'package:flutter_application_review/screens/page_two.dart';

class PageOne extends StatefulWidget {
  PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String? textDisplay;
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
              Text(textDisplay ?? ""),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageTwo(
                                  ontext: (value) {
                                    setState(() {
                                      textDisplay = value;
                                    });
                                  },
                                )));
                  },
                  icon: const Icon(Icons.skip_next),
                  label: const Text("Click Me"))
            ],
          ),
        ),
      ),
    );
  }
}
