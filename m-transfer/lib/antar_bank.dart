import 'package:flutter/material.dart';
import 'package:homescreen/main.dart';

class AntarBank extends StatelessWidget {
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

                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: TextField(
                          style: TextStyle(
                            height: 0,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            labelText:
                                "No. Rekening Tujuan                                           >",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 167, 168, 169),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: TextField(
                          style: TextStyle(
                            height: 0,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            labelText:
                                "Bank                                                                      >",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 167, 168, 169),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
