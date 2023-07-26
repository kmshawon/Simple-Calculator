import 'package:flutter/material.dart';

class cButton extends StatelessWidget {
  final String textq;
  final int fillcolor;
  final int textcolor;
  final double fontsize;
  final Function callback;

  const cButton({
    required this.textq,
    required this.fillcolor,
    required this.textcolor,
    required this.fontsize,
    required this.callback,

  });

  @override
  Widget build(BuildContext context) {
    return Container(


      margin: EdgeInsets.all(10),
      child: SizedBox(
          width: 70,
          height: 70,
          child: ElevatedButton(

            style: ElevatedButton.styleFrom(
              primary: Color(fillcolor) ,// background
              //onPrimary: Colors.white,

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              // foreground
            ),
            onPressed: () => {callback(textq),},
            child: Text(textq,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(textcolor),
                    fontSize: fontsize)),
          )),
    );
  }
}
