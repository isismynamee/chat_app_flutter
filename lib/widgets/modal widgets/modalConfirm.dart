import 'package:flutter/material.dart';

class ModalConfirm extends StatefulWidget {
  
  final icon;
  final title;
  final body;
  // final bool? showModal;;

 const ModalConfirm({
    Key? key,
    required this.icon,
    required this.title,
    required this.body,
    // required this.showModal;,
  }) : super(key :key);

  
  @override
  State<ModalConfirm> createState() => _ModalConfirmState();
}

class _ModalConfirmState extends State<ModalConfirm> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title.toString()),
      content: Text("Are you sure want to delete ${widget.body.toString()}?"),
      actions: [
        TextButton(
          onPressed: (){
            print("Cancel");
            Navigator.of(context).pop();
            // setState(() {
              
            // });
          }, 
          child: Text("Cancel")
        ),
        TextButton(
          onPressed: (){
            print("Yes");
            Navigator.of(context).pop();
            // setState(() {})
          }, 
          child: Text("Yes")
        )
      ],
    );
  }
}