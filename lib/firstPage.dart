import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  bool isClicked = false;
  clickButton() {
    setState(() {
      isClicked = (isClicked) ? false: true;
    });
  }

  textAndIconColor() => (isClicked) ? Colors.white : Colors.grey;
  btnColor() => (isClicked) ? Colors.blue : null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(

              style: TextButton.styleFrom(
                backgroundColor: btnColor(),
              ),
                onPressed: (
                    ) {
                  clickButton();

                },
                icon: Icon(
                  Icons.thumb_up,
                  color: textAndIconColor(),
                ),
              label: Text(
                "LIKE",
                style: TextStyle(color: textAndIconColor()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
