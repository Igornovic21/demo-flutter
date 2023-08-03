import 'package:demo/utils/color_palette.dart';
import 'package:demo/widgets/appbar_widget.dart';
import 'package:demo/widgets/avatar_widget.dart';
import 'package:demo/widgets/button_widget.dart';
import 'package:demo/widgets/drawer_widget.dart';
import 'package:demo/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'ACCOUNT',
        ),
      ),
      drawer: const DrawerWidget(),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: AvatarWidget(
              bgcolor: ColorPallette.primary,
              psncolor: Colors.white,
              avticon: Icons.person,
            ),
          ),
          const Text("YOUR NAME"),
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: InputWidget(
              hintText: "KARINA BUYS",
              maxlines: 1,
            ),
          ),
          const Text("BANK ACCOUNT"),
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: InputWidget(
              hintText: "00 123 456",
              maxlines: 1,
            ),
          ),
          const Text("EMAIL"),
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: InputWidget(
              hintText: "karina_buys@gmail.com",
              maxlines: 1,
            ),
          ),
          const Text("PASSWORD"),
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: InputWidget(
              hintText: "************",
              maxlines: 1,
            ),
          ),
          const Text("PHONE NUMBER"),
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: InputWidget(
              hintText: "+44 558 257 68 005",
              maxlines: 1,
            ),
          ),
          const Text("YOUR ADDRESS"),
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: InputWidget(
              hintText:
                  "Lorem ipsum 22nd street, Tincidunt ut laoreet, 5N 27T - Lorem ipsum",
              maxlines: 5,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
            child: Text(
                "* Nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non."),
          ),
          const ButtonWidget(
            title: "SAVE CHANGES",
          )
        ],
      ),
    );
  }
}
