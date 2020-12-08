import 'package:ewallet/dashboard.dart';
import 'package:ewallet/payment.dart';
import 'package:flutter/material.dart';

class Pincode extends StatefulWidget {
  @override
  _PincodeState createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
               Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400]
            ],
            begin: Alignment.topRight,
          )
        ),
        child: OtpScreen(),
      ),
    );
  }
}

class OtpScreen extends StatefulWidget
{
  @override
  _OtpScreenState createState() => _OtpScreenState();
  }
  class _OtpScreenState extends State<OtpScreen>{
    List<String> currentPin =["","","",""];
    TextEditingController pinOneController =TextEditingController();
    TextEditingController pinTwoController =TextEditingController();
    TextEditingController pinThreeController =TextEditingController();
    TextEditingController pinFourController =TextEditingController();
    
    var outlineInputBorder =  OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: Colors.transparent),
    );
  
    int pinIndex =0;
    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Column(
          children: <Widget>[
            buildExitButton(),
            Expanded(
              
              child: Container(
                // alignment: Alignment(0, 0),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    buildSecurityText(),
                    SizedBox(height: 40.0),
                    buildPinRow(),
                    SizedBox(
                      height:250,
                    ),
                     Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RaisedButton(
                            
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            },
                            child: Text("Pay"),
                            color: Colors.orange,
                            elevation:6.0,
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          
          ],
        ),
      );
    }
    buildPinRow() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          PinNumber(
            outlineInputBorder: outlineInputBorder,
            textEditingController: pinOneController,
          ),
          PinNumber(
            outlineInputBorder: outlineInputBorder,
            textEditingController: pinTwoController,
          ),
          PinNumber(
            outlineInputBorder: outlineInputBorder,
            textEditingController: pinThreeController,
          ),
          PinNumber(
            outlineInputBorder: outlineInputBorder,
            textEditingController: pinFourController,
          ),
        ],
      );
    }
     buildSecurityText() {
       return Text("Security PIN",style: TextStyle(
         color: Colors.white70,
         fontSize: 21.0,
         fontWeight: FontWeight.bold,
       ),
       );
     }
    buildExitButton(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: MaterialButton(
             onPressed: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Payment(),
                    ),
                  );

             },
             height: 50.0,
             minWidth: 50.0,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(50.0),
             ),
             child: Icon(Icons.clear, color: Colors.white,),
             ),
         ) 
        ],
      );
    }
  }
  
  class PinNumber extends StatelessWidget {
    final TextEditingController textEditingController;
    final OutlineInputBorder outlineInputBorder;
    PinNumber({this.textEditingController,this.outlineInputBorder});
    @override
    Widget build(BuildContext context){
      return Container(
        width: 50.0,
        child: TextField(
          maxLength: 1,
          controller: textEditingController,
          enabled: true,
          obscureText: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(16.0),
            border: outlineInputBorder,
            filled: true,
            fillColor: Colors.white30,
          ),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21.0,
            color: Colors.white,
          ),
        ),
      );
    } 
  }