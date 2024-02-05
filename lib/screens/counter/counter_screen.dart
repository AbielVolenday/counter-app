import "package:flutter/material.dart";

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    super.key,
  });

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 120,
              ),
            ),
            Text(
              counter > 0 ? "Clicks" : "Click",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            child: const Icon(Icons.restart_alt),
          ),
          const Padding(padding: EdgeInsets.all(8)),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Icon(Icons.plus_one)),
        ],
      ),
    );
  }
}
