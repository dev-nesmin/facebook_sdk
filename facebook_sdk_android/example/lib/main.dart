import 'dart:async';

import 'package:facebook_sdk_platform_interface/facebook_sdk_platform_interface.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool fbInitState = false;

  @override
  void initState() {
    super.initState();
    initFB();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initFB() async {
    final FacebookSdkPlatform facebookSdk = FacebookSdkPlatform.instance;
    bool state = await facebookSdk.initialize();

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      fbInitState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('FB initialize: $fbInitState\n'),
        ),
      ),
    );
  }
}
