import 'package:demo/utils/color_palette.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(widget.title),
        ],
      ),
      centerTitle: true,
      backgroundColor: ColorPallette.primary,
      shadowColor: Colors.transparent,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 5.0),
          child: Icon(Icons.settings),
        )
      ],
    );
  }
}
