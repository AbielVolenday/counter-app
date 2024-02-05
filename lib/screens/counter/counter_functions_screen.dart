import "package:flutter/material.dart";

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({
    super.key,
  });

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 20),
          // decoration: const BoxDecoration(
          //     color: Colors.black26,
          //     borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Center(
            child: Text('Counter Functions'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
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
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              }),
          const SizedBox(height: 10),
          CustomFloatingButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                if (counter <= 0) return;
                counter--;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomFloatingButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomFloatingButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 6,
      enableFeedback: true,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
