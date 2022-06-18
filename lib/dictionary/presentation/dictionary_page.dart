import 'package:flutter/material.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Center(
            child: Text(
              'some text',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
