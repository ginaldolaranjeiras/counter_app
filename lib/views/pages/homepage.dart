import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Contador",
              textScaleFactor: 3,
            ),
            Text(
              a.toString(),
              textScaleFactor: 3,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  a++;
                });
              },
              child: Container(
                width: 150,
                height: 50,
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Plus",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  a--;
                  if (a < 0) {
                    a = 0;
                  }
                });
              },
              child: Container(
                width: 150,
                height: 50,
                //color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Less",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
