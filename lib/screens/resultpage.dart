import 'package:flutter/material.dart';
import 'package:newproject/main.dart';
import 'package:newproject/screens/reusablecard.dart';
import 'input_page.dart';
import 'brain.dart';
class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiresults, required this.interpret, required this.resulttext});
  final String bmiresults;
  final String resulttext;
  final String interpret ;
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text('Resut'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: activecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resulttext.toLowerCase(),
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmiresults,
                      style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      interpret,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              
              child: Center(
                child: Text('RE-CALCULATE',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              width: double.infinity,
              height: bottomcontainerheight,
              margin: EdgeInsets.only(top: 10),
              padding:EdgeInsets.only(bottom: 10),
              color: bottomcontainorcolor,
            ),
          ),
        ],
      ),
    );
  }
}
