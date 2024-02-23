// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}


class RandomWords extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const RandomWords({Key? key});

  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {

  final _randomWordPairs = <WordPair>[];
  final _savedWordPairs = <WordPair>{};


  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, item){
        if(item.isOdd) return const Divider();
         
        final index = item ~/ 2;

        if (index >= _randomWordPairs.length){
          _randomWordPairs.addAll(generateWordPairs().take(10));

        }
        return _buildRow(_randomWordPairs[index]);

      }
    
    );
  }

  Widget _buildRow(WordPair pair){
     final alreadySaved = _savedWordPairs.contains(pair);

     return ListTile(title: Text(pair.asPascalCase, style:
     const TextStyle(fontSize: 18.0)),
     trailing: Icon(alreadySaved ? Icons.favorite : 
     Icons.favorite_border, color: alreadySaved ? Colors.red: null),
     onTap: () {
      setState(() {
        if(alreadySaved){
          _savedWordPairs.remove(pair);
        } else {
          _savedWordPairs.add(pair);
        }
      });
     }


     );
  }
   
   // ignore: non_constant_identifier_names
   void _PushSaved() {
    Navigator.of(context).push(
  MaterialPageRoute(
    builder: (BuildContext context) {
      final Iterable<ListTile> tiles = _savedWordPairs.map(
        (WordPair pair) {
          return ListTile(
            title: Text(
              pair.asPascalCase,
              style: const TextStyle(fontSize: 16.0),
            ),
          );
        },
      );
       final List<Widget> divided = ListTile.divideTiles(
        context: context,
        tiles: tiles
       ).toList();

      return Scaffold(
        appBar: AppBar(
          title: const Text('Saved WordPairs'),
        ),
        body: ListView(children: divided),
      ); 
    },
  ),
);

   }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 150, 43, 16), 
          title: const Text('WordPair Generator'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.list),
              onPressed: _PushSaved,)
              
          ]
        ),),
      body: _buildList(),
    );
  }
}