import 'package:demo/pages/account/account_page.dart';
import 'package:flutter/material.dart';
import 'package:demo/utils/color_palette.dart';

class ButtonWidget extends StatefulWidget {
  final String title;

  const ButtonWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            backgroundColor: ColorPallette.primary),
        onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AccountPage(),
              ),
            ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(widget.title),
        ));
  }
}
