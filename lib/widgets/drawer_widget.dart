import 'package:demo/pages/account/account_page.dart';
import 'package:demo/pages/home/home_page.dart';
import 'package:demo/pages/payment/payment_page.dart';
import 'package:demo/pages/transaction/transaction_page.dart';
import 'package:demo/utils/color_palette.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: ColorPallette.primary,
            ),
            child: const Text('DEMO APP'),
          ),
          ListTile(
            title: const Text('Account Page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AccountPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Payment Page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaymentPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Transaction Page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransactionPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Home Page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
