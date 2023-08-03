import 'package:demo/utils/color_palette.dart';
import 'package:demo/widgets/appbar_widget.dart';
import 'package:demo/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int _activeTabs = 0;

  void _setCurrentTabs(int index) {
    if (index == _activeTabs) {
      return;
    }

    if (_activeTabs == 0) {
      setState(() {
        _activeTabs = 1;
      });
    } else {
      setState(() {
        _activeTabs = 0;
      });
    }
  }

  final List<Map<String, dynamic>> _paymentsInProgress = [
    {
      "color": const Color.fromARGB(255, 71, 166, 218),
      "title": "Lorem Ipsum Company",
      "description": "Waiting for payment",
      "price": "\$20,030.80"
    },
    {
      "color": ColorPallette.primary,
      "title": "Lorem Ipsum Company",
      "description": "Waiting for payment",
      "price": "\$20,030.80"
    },
  ];

  final List<Map<String, dynamic>> _paymentsComplete = [
    {
      "color": const Color.fromARGB(255, 218, 71, 162),
      "title": "Lorem Ipsum Company",
      "description": "Received payment",
      "price": "\$20,030.80"
    },
    {
      "color": const Color.fromARGB(255, 218, 71, 76),
      "title": "Lorem Ipsum Company",
      "description": "Received payment",
      "price": "\$20,030.80"
    },
  ];

  Widget _buildStatusWidget(String title, int index) {
    return Builder(
      builder: (context) {
        return InkWell(
          onTap: () => _setCurrentTabs(index),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: _activeTabs == index
                    ? const Color.fromARGB(255, 71, 166, 218)
                    : Colors.grey,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))),
            child: Center(
                child: Text(
              title,
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
        );
      }
    );
  }

  Widget _buildTransactionWidget(
      Color color, String title, String description, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
          height: 50,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: color,
              radius: 30,
            ),
            title: Text(title),
            subtitle: Text(description),
            trailing: Text(price),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: "Transactions"),
      ),
      drawer: const DrawerWidget(),
      body: ListView(
        children: [
          Container(
            color: ColorPallette.primary,
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: _buildStatusWidget("COMPLETE", 0),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: _buildStatusWidget("IN PROGRESS", 1),
                )),
              ],
            ),
          ),
          Column(
            children: _activeTabs == 0
                ? _paymentsComplete
                    .map((payment) => _buildTransactionWidget(
                        payment["color"],
                        payment["title"],
                        payment["description"],
                        payment["price"]))
                    .toList()
                : _paymentsInProgress
                    .map((payment) => _buildTransactionWidget(
                        payment["color"],
                        payment["title"],
                        payment["description"],
                        payment["price"]))
                    .toList(),
          )
        ],
      ),
    );
  }
}
