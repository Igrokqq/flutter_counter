import 'package:flutter/material.dart';
import 'package:flutter_counter/src/provider_counter/counter_provider.dart';
import 'package:flutter_counter/src/provider_counter/counter_widget.dart';
// import 'package:flutter_counter/src/simple_counter/counter_widget.dart';
import 'package:provider/provider.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider())
      ],
      child: const MaterialApp(
        home: Scaffold(body: CounterWidget())
      ),
    );
  }
}
