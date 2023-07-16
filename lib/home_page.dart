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
                    color: const Color(0xFF004572),
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
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Username or Email",
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                  borderRadius: BorderRadius.circular(5)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Password",
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(),
                                    borderRadius: BorderRadius.circular(5)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  backgroundColor: const Color(0xFF004572)),
                              onPressed: () => debugPrint("je suis connecté"),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.0),
                                child: Text("LOG IN"),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 50.0, bottom: 5.0),
                            child: Text(
                              "Forgot password ?",
                              style: TextStyle(
                                  color: Color(0xFF88C6C7),
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("New to Bank Apps ? "),
                              Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Color(0xFF88C6C7),
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
