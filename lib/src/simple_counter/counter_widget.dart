import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _pressCount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('Pressed ${_pressCount.toString()} times'),),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () => setState(() {
              _pressCount++;
            }), child: const Text('Increment')),
            TextButton(onPressed: () => setState(() {
              _pressCount = 0;
            }), child: const Text('Reset'))
        ],)
      ],
    );
  }
}
