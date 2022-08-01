import 'package:flutter/material.dart';
import 'package:untitledfdfd/second.dart';

class formregistrasi extends StatefulWidget {
  const formregistrasi({Key? key}) : super(key: key);

  @override
  State<formregistrasi> createState() => _formregistrasiState();
}

class _formregistrasiState extends State<formregistrasi> {
  TextEditingController ctrusername = new TextEditingController();
  TextEditingController ctrpassword = new TextEditingController();
  int id = 1;
  String myPhone = " - ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Registrasi"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: ctrusername,
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),

            SizedBox(height: 10,),
            TextField(
              controller: ctrpassword,
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 10,),

            Text("Jenis Kelamin",style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),

            Row(
              children: [
              Radio(
                value: 1,
                groupValue: id,
                onChanged: (val) {
                  setState((){
                    id = 1;
                  });

                },
              ),
                Text("Male")
              ],
            ),

            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState((){
                      id = 2;
                    });

                  },
                ),
                Text("Female")
              ],
            ),

            SizedBox(height: 20,),
            Text("Phone : " + myPhone),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const second()),
              );
              print("Hasil input : " + result.toString());
              setState(() {
                myPhone = result.toString();
              });
            }, child: Text("Phone")),

            Center(
              child:
              ElevatedButton(onPressed: () async {
              }, child: Text("Confrim")),
            )


          ],
        ),
      ),
    );
  }
}

