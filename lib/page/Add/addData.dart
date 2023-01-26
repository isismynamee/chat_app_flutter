import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});
  
  @override
  _AddDataState createState(){
    return _AddDataState();
  } 
}

class _AddDataState extends State<AddData> {
  final stateForm = TextEditingController();

  void dispose(){
    stateForm.dispose();
    super.dispose();
  }

  final _formsKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formsKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                controller: stateForm,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextFormField(
                onChanged: (text){
                  print(text);
                },
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Please Insert this";
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Username"
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text("isi $stateForm"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Please Insert this";
                  }else{
                    return null;
                  }
                } ,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Username"
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ElevatedButton(
                child: Text("Submit"),
                onPressed: (){
                  if(_formsKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                  }
                },
              ), 
            )
          ],
        ),
        ),
      );
  }
}