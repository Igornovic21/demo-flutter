import 'package:flutter/material.dart';

class AvatarWidget extends StatefulWidget {
  final Color bgcolor;
  final Color psncolor;
  final IconData avticon;
   const AvatarWidget({super.key, required this.bgcolor, required this.psncolor, required this.avticon});

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return 
      CircleAvatar(
              radius: 50,
              backgroundColor: widget.bgcolor,
              child: Icon(
                widget.avticon,
                size: 60,
                color: widget.psncolor,
              ),
            );
  }
}