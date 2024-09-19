import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemplatePage extends StatelessWidget {
   final IconData? mainIcon;
   final String? mainText;
   final IconData? buttonIcon;
   final String? buttonText;

   const TemplatePage(
      {super.key,
      required this.mainIcon,
      required this.mainText,
      required this.buttonIcon,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              mainIcon!,
              color: Colors.purpleAccent,
              size: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              mainText!,
              style: const TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    ),
                child: Row(
                  mainAxisSize: MainAxisSize.min
                  ,children: [
                    Icon(
                      buttonIcon!,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      buttonText!,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
