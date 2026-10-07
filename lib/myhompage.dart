import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("rapotdigital")),
    backgroundColor: Color.fromARGB(199, 97, 59, 138),
    body:Column(children: [
      Center(
        child: Container(
          width: 300,
          color: Color.fromARGB(197, 220, 155, 155),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'masukan nama kamu',
              border: OutlineInputBorder(),
            ),
            controller: inputNama,
            onSubmitted: (values) {
              inputNama.text = values;
            },
          ),
        ),
      ),
      ElevatedButton(
      child: Text("tampilkan nama"),
      onPressed: () {
        print(inputNama.text);
      },
      ),
    ],
    ),
    );
  }
}
