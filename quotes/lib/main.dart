import 'package:flutter/material.dart';
import 'quote.dart';

void main() =>  runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  /*
  List<String> quotes= [
    'Be yourself; everyone is '
    'I have',
    'The truth'
  ]; // equals to new list
  */
  //List<String> quotes = [
  List<Quote> quotes = [
    Quote(author:'Oscar W', text:'Be yourself; everyone is already taken'),
    Quote(author:'Oscar W', text:'I Have nothing to declare'),
    Quote(author:'Oscar W', text:'The truth is rarely')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent
        ,
      ),
      body: Column(
        //children: quotes.map((quote){
        //  return Text(quote);
        //}).toList(),
        // printing a property requires to be enclosed in {}
        children: quotes.map( (quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );  //returns the widget tree
  }
}

