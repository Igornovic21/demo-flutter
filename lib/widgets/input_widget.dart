import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String hintText;
  final int maxlines;
  const InputWidget({super.key, required this.hintText, required this.maxlines});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: widget.maxlines,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintMaxLines: widget.maxlines,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(5)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
