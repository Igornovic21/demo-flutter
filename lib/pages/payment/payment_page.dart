import 'package:demo/pages/payment/widgets/payment_type_widget.dart';
import 'package:demo/utils/color_palette.dart';
import 'package:demo/widgets/appbar_widget.dart';
import 'package:demo/widgets/avatar_widget.dart';
import 'package:demo/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'PAYMENT',),
      ),
      drawer: const DrawerWidget(),
      body: ListView(
        children: [
          Container(
            color: ColorPallette.primary,
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: AvatarWidget(bgcolor: Colors.white, psncolor: Colors.blueAccent, avticon: Icons.person,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('BALANCE',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent, fontSize:15),),
                    Text('\$4,180.20',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize:30),)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentTypeWidget(avatarcolor: Colors.white, avticon: Icons.water, bgcolor: Colors.blue, description: 'Water',),
                    PaymentTypeWidget(avatarcolor: Colors.white, avticon: Icons.light, bgcolor: Colors.orange, description: 'Electricity',),
                    PaymentTypeWidget(avatarcolor: Colors.white, avticon: Icons.gas_meter, bgcolor: Colors.orangeAccent, description: 'Gas',),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const PaymentTypeWidget(avatarcolor: Colors.white, avticon: Icons.shop, bgcolor: Colors.pink, description: 'Shopping',),
                      PaymentTypeWidget(avatarcolor: Colors.white, avticon: Icons.phone, bgcolor: ColorPallette.primary, description: 'Phone',),
                      const PaymentTypeWidget(avatarcolor: Colors.white, avticon: Icons.credit_card, bgcolor: Color.fromARGB(255, 29, 92, 62), description: 'Credit Card',),
                    ]),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentTypeWidget(avatarcolor: Colors.white, avticon: Icons.badge, bgcolor: Color.fromARGB(255, 13, 69, 114), description: 'Insurance',),
                    PaymentTypeWidget(avatarcolor: Colors.white, avticon: Icons.home, bgcolor: Color.fromARGB(255, 39, 129, 202), description: 'Mortgage',),
                    PaymentTypeWidget(avatarcolor: Colors.white, avticon: Icons.file_copy, bgcolor: Color.fromARGB(255, 175, 170, 170), description: 'Others Bill',),
                  ]),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('more', style: TextStyle(color: Colors.blue, fontSize: 15),),
                Icon(Icons.rowing_outlined, color: Colors.blue,)
              ],
            ),
          )
        ],
      ),
    );
  }
}