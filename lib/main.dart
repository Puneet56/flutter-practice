import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandowWordsState();
}

class _RandowWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final _words = <WordPair>[];
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext context, i) {
          if (i.isOdd) return const Divider();
          if (i >= _words.length) {
            _words.addAll(generateWordPairs().take(10));
          }
          return (Text(_words[i].asCamelCase));
        });
  }
}
