import 'package:flutter/material.dart';
import 'package:okra_ui/models/transactions.dart';

const grey = Color(0xff282828);
const grey2 = Color(0xffD5D7D6);
const grey3 = Color(0xffBDBDBD);
const deepGreen = Color(0xff17836A);
const pink = Color(0xffB53C5D);
const orange = Color(0xffFE9A24);

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> with TickerProviderStateMixin {
  
  TabController _controller;

  List<OkraTransactions> _transactions = [
    OkraTransactions(amount: "-₦ 500.00", bank: "Firstbank", transactionDate: "Today, 12:45 pm", amountColor: pink),
    OkraTransactions(amount: "-₦ 7,350.00", bank: "Guranty Trust Bank", transactionDate: "Today, 12:45 pm", amountColor: pink),
    OkraTransactions(amount: "+₦ 12,000.00", bank: "Firstbank", transactionDate: "Today, 12:45 pm", amountColor: deepGreen),
    OkraTransactions(amount: "-₦ 650.15", bank: "Firstbank", transactionDate: "Today, 12:45 pm", amountColor: pink),
    OkraTransactions(amount: "-₦ 420.00", bank: "Firstbank", transactionDate: "Today, 12:45 pm", amountColor: pink),
    OkraTransactions(amount: "-₦ 500.00", bank: "Firstbank", transactionDate: "Today, 12:45 pm", amountColor: pink),
  ];

  @override
  void initState() {
    // TODO: implement initState
    _controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  ListView TransactionsList () {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: _transactions.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              _transactions[index].amount,
                            style: TextStyle(
                              color: _transactions[index].amountColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            _transactions[index].bank + ' . ' + _transactions[index].transactionDate,
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Icon(Icons.add, color: grey, size: 28,),
                      ),
//                Expanded(),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(),
                SizedBox(height: 5,),
              ],
            ),
          );
        }
    );
  }

  ListView TransactionsList2 () {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: _transactions.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _transactions[index].amount,
                          style: TextStyle(
                              color: _transactions[index].amountColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: <Widget>[
                            Text(
                              _transactions[index].bank + ' . ' + _transactions[index].transactionDate,
                              style: TextStyle(
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Color(0xff4DC144),
                                borderRadius: BorderRadius.circular(6),

                              ),
                              child: Text('Groceries', style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Icon(Icons.more_vert, color: grey, size: 28,),
                    ),
//                Expanded(),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(),
                SizedBox(height: 5,),
              ],
            ),
          );
        }
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
          'Transactions',
          style: TextStyle(
            color: grey,
            fontFamily: 'CircularStd',
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
                decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 20.0,
                          offset: Offset(0.0, 0.75)
                      )
                    ],
                    color: Colors.white
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 24,),
                    Text(
                      '347 transactions',
                      style: TextStyle(
                        color: deepGreen,
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'CircularStd',
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'In 4 accounts',
                      style: TextStyle(
                        color: grey3,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'CircularStd',
                      ),
                    ),
                    SizedBox(height: 24,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                      decoration: BoxDecoration(
                        color: Color(0xffEDEDED),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'May 2020',
                            style: TextStyle(
                              color: grey,
                              fontSize: 16,
                              fontFamily: 'CircularStd',
                            ),
                          ),
                          Icon(Icons.date_range, color: grey3,),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Container(
//                    height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.white,

                      child: TabBar(
                        controller: _controller,
                        labelColor: deepGreen,
                        labelStyle: TextStyle(
                          fontFamily: 'CircularStd',
                          fontSize: 16,
                        ),
                        unselectedLabelColor: grey,
                        indicatorColor: deepGreen,
                        indicator: BoxDecoration(
                          gradient: new LinearGradient(
                              stops: [0.10, 0.02],
                              begin: Alignment.bottomRight,
                              colors: [deepGreen, Color(0xffF5FBF9)]
                          ),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                        ),
                        tabs: <Widget>[
                          Tab(text: 'Uncategorized (65)',),
                          Tab(text: 'All (347)'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                child: TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Add your transactions into categories to keep track of where your money is going. Tap the + icon to add to category.',
                              style: TextStyle(
                                color: grey,
                                fontFamily: 'CircularStd',
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Expanded(child: TransactionsList()),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Add your transactions into categories to keep track of where your money is going. Tap the + icon to add to category.',
                              style: TextStyle(
                                color: grey,
                                fontFamily: 'CircularStd',
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Expanded(child: TransactionsList2()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
