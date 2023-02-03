import 'package:flutter/material.dart';

class ModalConfirm extends StatefulWidget {
  
  final icon;
  final title;
  final body;
  final openModalConfirm;

  const ModalConfirm({
    Key? key,
    required this.icon,
    required this.title,
    required this.body,
    required this.openModalConfirm,
  }) : super(key :key);

  void _openThis(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext data){
        return AlertDialog(
          title: Text(title),
          content: Text("Are you sure want to delete $body?"),
          actions: [
            TextButton(
              onPressed: (){
                print("Cancel");
                // setState(() {})
              }, 
              child: Text("Cancel")
            ),
            TextButton(
              onPressed: (){
                print("Yes");
                // setState(() {})
              }, 
              child: Text("Yes")
            )
          ],
        );
      } 
    );
  }
  @override
  State<ModalConfirm> createState() => _ModalConfirmState();
}

class _ModalConfirmState extends State<ModalConfirm> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Icon(widget.icon)
    );
  }
}