import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_discord_rpc/flutter_discord_rpc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDiscordRPC.initialize(Platform.environment["DISCORD_APP_ID"]!);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int sumResult;
  late Future<int> sumAsyncResult;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
