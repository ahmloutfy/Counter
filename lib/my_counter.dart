import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key, required this.title});

  final String title;

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Center(
        child: Text(widget.title),
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            backgroundColor: Colors.pink,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.refresh,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
