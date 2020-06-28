import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


const grey = Color(0xff282828);
const grey2 = Color(0xffD5D7D6);
const grey3 = Color(0xffBDBDBD);
const deepGreen = Color(0xff17836A);
const pink = Color(0xffB53C5D);
const orange = Color(0xffFE9A24);



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Container CustomCard({Color color1, Color color2, String topLabel, String centerLabel, String timeLabel, double percent, Color progressBackgroundColor}) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
      height: 210,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.bottomLeft,
            end: Alignment.topCenter,
            stops: [0,0.4]
        ),
        boxShadow: [
          BoxShadow(
              color: Color(0xffE2E2E2),
              offset: new Offset(1.0, 1.0),
              blurRadius: 10.0,
              spreadRadius: 1,
          )
        ],

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                topLabel,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'CircularStd',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    centerLabel,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      letterSpacing: 1,
                      fontFamily: 'CircularStd',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Text(
                    timeLabel,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'CircularStd',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                (progressBackgroundColor != null) ? LinearPercentIndicator(
                  width: 170,
                  lineHeight: 5.0,
                  percent: percent,
                  progressColor: Colors.white,
                  backgroundColor: progressBackgroundColor,
                ) : SizedBox(height: 0,),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container YouStartedCards() {
    return Container(
//      padding: EdgeInsets.symmetric(vertical: 20),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
                children: <Widget>[
                  CustomCard(
                    color1: Colors.green,
                    color2: deepGreen,
                    topLabel: 'Money Hacks',
                    centerLabel: 'Tricks For\nSpending Less',
                    timeLabel: '30 mins',
                    percent: 0.6,
                    progressBackgroundColor: Color(0xff44A47F),
                  ),
                  CustomCard(
                    color1: Color(0xffFFAD4D),
                    color2: orange,
                    topLabel: 'Learning Okra\nMoney',
                    centerLabel: 'Budgeting The\nRight Way',
                    timeLabel: '22 mins',
                    percent: 0.2,
                    progressBackgroundColor: Color(0xffFBAF50),
                  ),
                  CustomCard(
                    color1: Color(0xffF05973),
                    color2: pink,
                    topLabel: 'Toolbox',
                    centerLabel: 'Tools For\nSaving',
                    timeLabel: '30 mins',
                    percent: 0.3,
                    progressBackgroundColor: Color(0xffFF90AE),
                  ),
                  CustomCard(
                    color1: Color(0xff525252),
                    color2: grey,
                    topLabel: 'Financial Knowledge',
                    centerLabel: 'Understanding\nInvestment',
                    timeLabel: '20 mins',
                    percent: 0.9,
                    progressBackgroundColor: grey3,
                  ),
//                  SizedBox(width: 20,),
                ]
            ),
          )
      ),
    );
  }

  Container SuggestedCards() {
    return Container(
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
                children: <Widget>[
                  CustomCard(
                    color1: Color(0xff525252),
                    color2: grey,
                    topLabel: 'Financial Knowledge',
                    centerLabel: 'Understanding\nInvestment',
                    timeLabel: '30 mins',
                    percent: 0.9,
//                  progressBackgroundColor: grey3,
                  ),
                  CustomCard(
                    color1: Color(0xffF05973),
                    color2: pink,
                    topLabel: 'Toolbox',
                    centerLabel: 'Tools For\nSaving',
                    timeLabel: '12 mins',
                    percent: 0.3,
//                  progressBackgroundColor: Color(0xffFF90AE),
                  ),
                  CustomCard(
                    color1: Colors.green,
                    color2: deepGreen,
                    topLabel: 'Money Hacks',
                    centerLabel: 'How to\nReduce Tax',
                    timeLabel: '16 mins',
                    percent: 0.6,
//                  progressBackgroundColor: Color(0xff44A47F),
                  ),
                  CustomCard(
                    color1: Color(0xffFFAD4D),
                    color2: orange,
                    topLabel: 'Learning Okra\nMoney',
                    centerLabel: 'Maximizing\nReports',
                    timeLabel: '12 mins',
                    percent: 0.2,
//                  progressBackgroundColor: Color(0xffFBAF50),
                  ),


//                SizedBox(width: 20,),
                ]
            ),
          )
      ),
    );
  }

  Container MoneyHacksCards() {
    return Container(
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
                children: <Widget>[
                  CustomCard(
                    color1: Colors.green,
                    color2: deepGreen,
                    topLabel: 'Money Hacks',
                    centerLabel: 'Tricks For\nSpending Less',
                    timeLabel: '30 mins',
                    percent: 0.6,
//                  progressBackgroundColor: Color(0xff44A47F),
                  ),
                  CustomCard(
                    color1: Colors.green,
                    color2: deepGreen,
                    topLabel: 'Money Hacks',
                    centerLabel: 'Tricks For\nSpending Less',
                    timeLabel: '30 mins',
                    percent: 0.6,
//                  progressBackgroundColor: Color(0xff44A47F),
                  ),
                  CustomCard(
                    color1: Colors.green,
                    color2: deepGreen,
                    topLabel: 'Money Hacks',
                    centerLabel: 'Tricks For\nSpending Less',
                    timeLabel: '30 mins',
                    percent: 0.6,
//                  progressBackgroundColor: Color(0xff44A47F),
                  ),
                  CustomCard(
                    color1: Colors.green,
                    color2: deepGreen,
                    topLabel: 'Money Hacks',
                    centerLabel: 'Tricks For\nSpending Less',
                    timeLabel: '30 mins',
                    percent: 0.6,
//                  progressBackgroundColor: Color(0xff44A47F),
                  ),


                  SizedBox(width: 20,),
                ]
            ),
          )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Education',
          style: TextStyle(
            color: grey,
            fontFamily: 'CircularStd',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
//        padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: 'What topic are you looking for?',
                    hintStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[600], fontFamily: 'CircularStd',),
                    filled: true,
                    fillColor: Color(0xffEDEDED),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(Icons.search, color: grey3, size: 30,),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'You started',
                  style: TextStyle(
                    color: grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CircularStd',
                  ),
                ),
              ),
              YouStartedCards(),
//              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Suggested',
                  style: TextStyle(
                    color: grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CircularStd',
                  ),
                ),
              ),
              SuggestedCards(),
//              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Money Hacks',
                  style: TextStyle(
                    color: grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CircularStd',
                  ),
                ),
              ),
              MoneyHacksCards(),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
      );
  }
}
