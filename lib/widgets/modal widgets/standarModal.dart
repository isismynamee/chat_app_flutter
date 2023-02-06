import 'package:flutter/material.dart';

class StandarModal extends StatefulWidget {
  final title;
  final message;
  final closeModal;
  
  const StandarModal({
    Key? key,
    required this.title,
    required this.message,
    required this.closeModal,
  });

  @override
  State<StandarModal> createState() => _StandarModalState();
}

class _StandarModalState extends State<StandarModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title.toString()),
      content: Text(widget.message.toString()),
      actions: [
        widget.closeModal
      ],
    );
  }
}