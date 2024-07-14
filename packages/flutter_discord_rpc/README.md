# flutter_discord_rpc

Discord RPC support for Flutter desktop platforms through IPC.

## Installation

Run the following:

```shell
> flutter pub add flutter_discord_rpc
```

### Usage

First, create discord application from https://discord.com/developers/applications. After that, you will get an application id. Use that application id in place of `<app-id>` in the below code.

```dart
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_discord_rpc/flutter_discord_rpc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDiscordRPC.initialize(
    "<app-id>",
  );
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
    FlutterDiscordRPC.instance.connect();
  }

  @override
  void dispose() {
    FlutterDiscordRPC.instance.disconnect();
    FlutterDiscordRPC.instance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextButton(
                  child: const Text("Set Activity"),
                  onPressed: () {
                    FlutterDiscordRPC.instance.setActivity(
                      activity: RPCActivity(
                        assets: const RPCAssets(
                          largeText: "Hello Testing!!!",
                          smallText: "Hello Testing!!!",
                        ),
                        buttons: [
                          const RPCButton(
                              label: "Google", url: "https://google.com"),
                        ],
                        details: "Very important details",
                        state: "Very important state",
                        timestamps: RPCTimestamps(
                          start: DateTime.now().millisecondsSinceEpoch,
                          end: DateTime.now().millisecondsSinceEpoch + 1000,
                        ),
                      ),
                    );
                  },
                ),
                TextButton(
                  child: const Text("Clear Activity"),
                  onPressed: () {
                    FlutterDiscordRPC.instance.clearActivity();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```
