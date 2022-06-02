import 'package:flutter/material.dart';
import 'package:mounted_state/mounted_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mounted_state Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with MountedState, MountedStateOverride {
  void _setStateOverride() {
    setState(() {
      // This will use MountedStateOverride
    });
  }

  void _setState() {
    setMountedState(() {
      // This will use MountedState
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
