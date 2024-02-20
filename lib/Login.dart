import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

  @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    passcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'LOGIN FORM',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        // ~===============================================
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namecontroller, //input field controller
                autocorrect: true,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Enter your Name',
                ),
              ),
            ),
            // ?----------------------------------------
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailcontroller,
                autocorrect: true,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Enter your Email',
                ),
              ),
            ),
            // ---------------------------------------
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passcontroller,
                autocorrect: true,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Enter your Password',
                ),
              ),
            ),
            // ^=========================SUBMIT  BUTTON =================
            ElevatedButton(
                onPressed: () {

                  print('name:${namecontroller.text}');
                  print('email:${emailcontroller.text}');
                  print('pass:${passcontroller.text}');
                  
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: const Text("Submit",
                    style: TextStyle(
                      color: Colors.amber,
                    )))
          ],
        ),
      ),
    );
  }
}
