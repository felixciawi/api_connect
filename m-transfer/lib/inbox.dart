import 'package:flutter/material.dart';
import 'package:homescreen/main.dart';

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 143, 145, 146),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
//appbar
                Container(
                    color: Colors.white,
                    height: 55,
                    width: 100,
                    child: Row(
                      children: <Widget>[
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(19)),
                                textStyle:
                                    MaterialStateProperty.all(const TextStyle(
                                  fontSize: 14,
                                ))),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainPage();
                              }));
                            },
                            child: const Text(
                              'Back',
                              style: TextStyle(color: Colors.blue),
                            )),
                        Container(
                          padding: EdgeInsets.fromLTRB(106, 0, 0, 0),
                          child: Text(
                            "m-Transfer",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: Icon(
                            Icons.square,
                            color: Colors.green,
                          ),
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(19)),
                                textStyle:
                                    MaterialStateProperty.all(const TextStyle(
                                  fontSize: 14,
                                ))),
                            onPressed: () {},
                            child: const Text(
                              'Send',
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
