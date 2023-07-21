import 'package:demo/utils/color_palette.dart';
import 'package:demo/widgets/button_widget.dart';
import 'package:demo/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// pour récupérer les dimensions de l'écran ça ce fait avec la fonction MediaQuery.of(context).size
// MediaQuery.of(context).size.width correspond à la largeur
// MediaQuery.of(context).size.height correspond à la hauteur

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
                child: Container(
                    width: double.maxFinite,
                    color: ColorPallette.primary,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Text("WELCOME!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30)),
                        ),
                        Image.asset("assets/images/banque.png", width: 150)
                      ],
                    ))),
            Expanded(
                child: Container(
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          const InputWidget(
                            hintText: "Username or Email",
                            maxlines: 1,
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: InputWidget(
                                hintText: "Password",
                                maxlines: 1,
                              )),
                          const ButtonWidget(
                            title: "LOG IN",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0, bottom: 5.0),
                            child: Text(
                              "Forgot password ?",
                              style: TextStyle(
                                  color: ColorPallette.secondary,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("New to Bank Apps ? "),
                              Text(
                                "Sign up",
                                style: TextStyle(
                                    color: ColorPallette.secondary,
                                    decoration: TextDecoration.underline),
                              )
                            ],
                          ),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
