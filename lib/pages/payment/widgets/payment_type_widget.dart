import 'package:demo/widgets/avatar_widget.dart';
import 'package:flutter/material.dart';

class PaymentTypeWidget extends StatefulWidget {
  final IconData avticon;
  final String description;
  final Color bgcolor;
  final Color avatarcolor;

  const PaymentTypeWidget({super.key, required this.avticon, required this.description, required this.bgcolor, required this.avatarcolor});

  @override
  State<PaymentTypeWidget> createState() => _PaymentTypeWidgetState();
}

class _PaymentTypeWidgetState extends State<PaymentTypeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarWidget(bgcolor: widget.bgcolor, psncolor: widget.avatarcolor, avticon: widget.avticon,),
        Text(widget.description)
      ],
    );
  }
}