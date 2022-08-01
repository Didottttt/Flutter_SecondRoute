import 'package:flutter/material.dart';
class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);
  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  TextEditingController ctrPhone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Route"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: ctrPhone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Phone Number'
              ),
            ),
            ElevatedButton(onPressed: (){
            Navigator.pop(context, ctrPhone.text);
            },child: Text("Submit")
            )

          ],
        ),
      ),
    );
  }
}