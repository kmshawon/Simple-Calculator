import 'package:flutter/material.dart';

import 'Buttonvalue.dart';

class Calculatorapp extends StatefulWidget {
  const Calculatorapp({Key? key}) : super(key: key);

  @override
  State<Calculatorapp> createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {


  late int numOne;
  late int numTwo;
   String textToDisplay ='';
  String log ='';
  late String res;
  late String opparation;
// btnclick == 'AC'
  void click(String btnclick) {
    print(btnclick);
    if (btnclick == 'C' ) {
      textToDisplay = '';
      numTwo = 0;
      numOne = 0;
      res = '';
    }
    else  if (btnclick == 'AC') {
      textToDisplay = '';
      log='';
      numTwo = 0;
      numOne = 0;
      res = '';
    }
    else if (btnclick == '+' || btnclick == '-' || btnclick == 'X' ||
        btnclick == '/') {
      numOne = int.parse(textToDisplay);
      res = '';
      opparation=btnclick;}
    
      else if(btnclick == '=')
        {numTwo=int.parse(textToDisplay);
          if(opparation == '+')
            {
          res= (numOne+numTwo).toString();
          log=numOne.toString()+opparation.toString()+numTwo.toString();
        }
           if(opparation == '-')
          {
            res= (numOne-numTwo).toString();
            log=numOne.toString()+opparation.toString()+numTwo.toString();
          }
           if(opparation == 'X')
          {
            res= (numOne*numTwo).toString();
            log=numOne.toString()+opparation.toString()+numTwo.toString();
          }
           if(opparation == '/')
          {
            res= (numOne/numTwo).toString();
            log=numOne.toString()+opparation.toString()+numTwo.toString();
          }
    }
      else{
        res=int.parse(textToDisplay+btnclick).toString();
    }
      setState(() {
        textToDisplay=res;
      });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Calculator"),
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(padding: EdgeInsets.all(10),
                  child: Text(log,
                    style: TextStyle(fontSize: 20,color: Colors.grey),
                  ),
                ),
                alignment: Alignment.bottomRight,

              ),
              Container(
                child: Padding(padding: EdgeInsets.all(20),
                  child: Text(textToDisplay,
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                alignment: Alignment.bottomRight,

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  cButton(
                    textq: 'AC',
                    fillcolor: 0xffE6B006,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: 'C',
                    fillcolor: 0xffE6B006,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '<',
                    fillcolor: 0xffE6B006,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '/',
                    fillcolor: 0xffE6B006,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cButton(
                    textq: '9',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '8',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '7',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: 'X',
                    fillcolor: 0xffE6B006,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cButton(
                    textq: '6',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '5',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '4',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '-',
                    fillcolor: 0xffE6B006,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cButton(
                    textq: '3',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '2',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '1',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '+',
                    fillcolor: 0xffE6B006,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cButton(
                    textq: '0',
                    fillcolor: 0xffA1A1A1,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                  cButton(
                    textq: '=',
                    fillcolor: 0xffE6B006,
                    textcolor: 0xff464231,
                    callback: click,
                    fontsize: 28,),
                ],
              ),

            ],
          ),
        ),); //scafold
    }
  }
