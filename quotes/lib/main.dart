
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
    Quote(author:'Oscar Wilde', text:'Be yourself; everyone else is already taken'),
    Quote(author:'Oscar W', text:'I Have nothing to declare except my genius'),
    Quote(author:'Oscar W', text:'The truth is rarely pure and never simple')
  ];

  // not in need anymore, new class QuoteCard returns the widget tree
  /*
  Widget quoteTemplate(quote){
    return QuoteCard(quote: quote);
  }
  */


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
        // children: quotes.map( (quote) => Text('${quote.text} - ${quote.author}')).toList(),
        children: quotes.map( (quote) => QuoteCard(quote: quote)).toList(),
      ),
    );  //returns the widget tree
  }
}



