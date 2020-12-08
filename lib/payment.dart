import 'package:ewallet/dashboard.dart';
import 'package:ewallet/pincode.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  TextEditingController numberController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 110, 30, 30),
            child: Container(
              height: 60,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                        controller: numberController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                       
                          hintText: "Enter Phone number",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none)),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(width: 1.0, color: Colors.black)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Container(
              height: 60,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      controller: amountController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                       
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          hintText: "Enter Amount",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none)),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(width: 1.0, color: Colors.black)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(200, 310, 30, 30),
            child: Container(
              height: 60,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pincode()),
                      );
                    },
                    child: Text("Send"),
                    color: Colors.orange,
                    elevation: 6.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
