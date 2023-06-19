import 'dart:ffi';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/resultpage.dart';
import 'icon_content.dart';
import 'reusablecard.dart';
import 'resultpage.dart';
import 'brain.dart';

const bottomcontainerheight = 80.0;
const activecardcolor = Colors.black26;
const inactivecardcolor = Colors.black45; //selected
const bottomcontainorcolor = Colors.pink;

enum Gender { male, female }

class InpputPage extends StatefulWidget {
  const InpputPage({super.key});

  @override
  State<InpputPage> createState() => _InpputPageState();
}

class _InpputPageState extends State<InpputPage> {
  Gender selectedgender = Gender.male;
  // Color malecardcolor = inactivecardcolor;
  // Color femalecardcolor = inactivecardcolor;
  // void updatecolor(Gender gen) {
  //   if (gen == Gender.male) {
  //     //male
  //     if (malecardcolor == inactivecardcolor) {
  //       malecardcolor = activecardcolor;
  //       femalecardcolor=inactivecardcolor;
  //     } else {
  //       malecardcolor = inactivecardcolor;
  //       //femalecardcolor=activecardcolor;
  //     }
  //   }
  //   if (gen == Gender.female) {
  //     //female
  //     if (femalecardcolor == inactivecardcolor) {
  //       femalecardcolor = activecardcolor;
  //       malecardcolor=inactivecardcolor;
  //     } else {
  //       femalecardcolor = inactivecardcolor;
  //      // malecardcolor=activecardcolor;
  //     }
  //   }
  // }
  double height = 180;
  int weight =60;
  int age =20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Male card pressed');
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedgender == Gender.male
                          ? activecardcolor
                          : inactivecardcolor,
                      cardchild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Female card pressed');
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedgender == Gender.female
                          ? activecardcolor
                          : inactivecardcolor,
                      cardchild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'Female',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ReusableCard(
              colour: activecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(height.toString(),
                      style: TextStyle(fontSize: 60),),
                      Text(
                        'cm',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      overlayColor: const Color.fromARGB(119, 233, 30, 98),
                      thumbColor: Colors.pink,
                      inactiveTrackColor: Colors.grey,
                      
                      thumbShape: 
                      RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: 
                      RoundSliderOverlayShape(overlayRadius: 30),


                    ),
                    child: Slider(
                      value: height,
                      
                      onChanged: (newrating) {
                        setState(() {
                          height = newrating.roundToDouble();
                        });
                      },
                      divisions: 300,
                      min: 0,
                      max: 300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Weight',
                        style: TextStyle(color: Colors.grey, fontSize: 20),),
                        Text(weight.toString(),style: TextStyle(color: Colors.white, fontSize: 60),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 60,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(
                                Icons.remove_circle_outline,
                                size: 60,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Age',
                        style: TextStyle(color: Colors.grey, fontSize: 20),),
                        Text(age.toString(),style: TextStyle(color: Colors.white, fontSize: 60),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 60,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(
                                Icons.remove_circle_outline,
                                size: 60,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(height:  height.toInt() ,weight: weight);
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                bmiresults: calc.calculateBMI(),
                interpret:calc.getInterpretations() ,
                resulttext:calc.getResult() ,
              )));
            },
            child: Container(
              
              child: Center(
                child: Text('CALCULATE',style: TextStyle(
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
