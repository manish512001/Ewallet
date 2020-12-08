import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class QrPage extends StatefulWidget {
  @override
  _QrPageState createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFE65100),

      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),

          
          Container(


            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),

                child: Container(

                  height: 600,
                  width: 600,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "SAKEC Pay",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      QrImage(
                        data: "921062146",
                        size: 300,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Scan Above Qr Code to pay",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}