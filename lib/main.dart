import 'package:flutter/material.dart';
import 'package:p13/p1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Myscreen(),
        'second': (context) => Myclass(),
      },
    ),
  );
}

class Myclass extends StatefulWidget {
  const Myclass({Key? key}) : super(key: key);

  @override
  State<Myclass> createState() => _MyclassState();
}

class _MyclassState extends State<Myclass> {
  double i = 0;
  bool a = false;
  String b = "Female";
  List l1 = [
    "Aniruddh",
    "anu",
    "Aniruddh",
    "anu",
    "Aniruddh",
    "anu",
    "Aniruddh",
  ];
  List l2 = [
    "6353788648",
    "9687158648",
    "6353788648",
    "8980557615",
    "6353788648",
    "9723665661",
    "6353788648",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("MY APP"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: l1.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("${l1[index]}"),
                        subtitle: Text("${l2[index]}"),
                        trailing: Icon(Icons.add),
                        leading: Text("$index"),
                      );
                    }),
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text("BirthDate"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              Slider(
                max: 100,
                divisions: 10,
                value: i,
                label: i.round().toString(),
                onChanged: (value) {
                  setState(
                    () {
                      i = value;
                    },
                  );
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Swimming"),
                  Checkbox(
                    value: a,
                    onChanged: (value) {
                      setState(() {
                        a = value!;
                      });
                    },
                  ),
                ],
              ),
              CheckboxListTile(
                value: a,
                onChanged: (value) {
                  setState(() {
                    a = value!;
                  });
                },
                title: Text("Reading"),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Radio(value: "Male", groupValue: b, onChanged: (value){
                    setState((){
                      b = value as String ;
                    });
                  }),Text("Male"),
                ],
              ),
              Row(
                children: [
                  Radio(value: "Female", groupValue: b, onChanged: (value){
                    setState((){
                      b = value as String ;
                    });
                  }),Text("Female"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

