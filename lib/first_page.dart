import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>{

  @override

  Widget build(BuildContext context){

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 200,
            color: const Color(0xFF004572),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 20,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/bank.png", width: 70),
                      Padding(
                        padding:const EdgeInsets.only(left: 15, right: 10),
                        child: Image.asset("assets/images/link.png", width: 70),
                        ),
                      Image.asset("assets/images/phone.png", width:70)
                    ],
                  ),
                ),
                Text('Connect to your bank account',
                style: 
                TextStyle(color: Colors.white, fontSize: 20)
                )
              ],
            ),
          ),
          Expanded(child:
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              width: double.maxFinite,
              color: Colors.white,
              child: Column(
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Your Name",
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Bank account",
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              TextField(
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
               const Text(
                "Use 6 characters with the nix of letters, numbers & symbols",
                style: TextStyle(
                    color: Color(0xFF88C6C7),
                ),),
                Row(
                  children: [
                    Icon(Icons.square),
                    Column(
                      children: [
                        Text('By signing up, you agree to',
                        style: TextStyle(fontSize: 15),),
                        Text('Bank\'s terms of use & privacy policy',
                        style: TextStyle(fontSize: 15),)
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: const Color(0xFF004572)),
                      onPressed: () => debugPrint("je suis connecté"),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text("SIGN UP"),
                      )),
                    Text('Or'),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: Colors.white),
                      onPressed: () => debugPrint("je suis connecté"),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text("CANCEL",
                        style: TextStyle(color: Colors.black),),
                      )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Already signed up ? "),
                    Text(
                      "Log in",
                      style: TextStyle(
                          color: Color(0xFF88C6C7),
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ],
              ),
            ),
          ) 
          )
        
        ],
      )
    );

  }

}