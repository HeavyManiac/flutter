
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget
{

  // not need it
  /*
  const QuoteCard({
    Key key,
  }) : super(key: key);
  */
  //StatelessWidget can't have data!
  //Quote quote; once is setup the data will not change
  final Quote quote; //use final to handle data inside a StatelessWidget// no state in the widget

  //constructor
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                )
            ),
          ],
        ),
      ),
    );
  }
}