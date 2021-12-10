/*
 * ---------------------------
 * File : method_channel_facebook_sdk_test.dart
 * ---------------------------
 * Author : nesmin
 * Date : Tue Nov 30 2021 12:46:03 PM
 * Copyright (c) 2021 
 * ---------------------------
 */

import 'package:facebook_sdk_platform_interface/method_channel_facebook_sdk.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('$MethodChannelFacebookSdk', () {
    const MethodChannel channel = MethodChannel('com.nesmin.facebook_sdk');
    final List<MethodCall> log = <MethodCall>[];
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      log.add(methodCall);

      // Return null explicitly instead of relying on the implicit null
      // returned by the method channel if no return statement is specified.
      return null;
    });

    final MethodChannelFacebookSdk facebookSdk = MethodChannelFacebookSdk();

    tearDown(() {
      log.clear();
    });

    test('initialize', () async {
      await facebookSdk.initialize(
          enableAutoLogAppEvents: false);
      expect(
        log,
        <Matcher>[
          isMethodCall('initialize', arguments: {
            "enableAutoLogAppEvents": false
          })
        ],
      );
    });

    test('initialize should return false if platform returns null', () async {
      final initialize = await facebookSdk.initialize(enableAutoLogAppEvents: false);

      expect(initialize, false);
    });
  });
}
