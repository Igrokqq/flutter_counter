import 'package:flutter/material.dart';
import 'package:flutter_counter/src/provider_counter/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(builder: ((context, counterProvider, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Pressed ${counterProvider.value.toString()} times')),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: counterProvider.increment,
                child: const Text('Increment')
              ),
              TextButton(
                onPressed: counterProvider.reset,
                child: const Text('Reset')
              )
          ],)
        ],
      );
    }));
  }
}
