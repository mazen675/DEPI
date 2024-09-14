import 'package:flutter/material.dart';

class StarterScreen extends StatelessWidget {
  const StarterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              height: 500,
              width: 500,
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset("assets/images/welcome.png")),
          const Text(
            "Welcome to the app",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
          const Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "We're excited to help you book and manage your service appointments with ease.",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                color: Colors.indigoAccent,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.circle,
                color: Colors.grey,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.circle,
                color: Colors.grey,
                size: 15,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  fixedSize: const Size(400, 50)),
              child: const Text("Login",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Create an account",
                style: TextStyle(
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ))
        ],
      ),
    );
  }
}
