/*
 * ---------------------------
 * File : facebook_sdk_platform_interface_test.dart
 * ---------------------------
 * Author : nesmin
 * Date : Tue Nov 30 2021 12:46:51 PM
 * Copyright (c) 2021 
 * ---------------------------
 */

import 'package:facebook_sdk_platform_interface/facebook_sdk_platform_interface.dart';
import 'package:facebook_sdk_platform_interface/method_channel_facebook_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock_data.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  // Store the initial instance before any tests change it.
  final FacebookSdkPlatform initialInstance = FacebookSdkPlatform.instance;

  group('$FacebookSdkPlatform', () {
    test('$MethodChannelFacebookSdk() is the default instance', () {
      expect(initialInstance, isInstanceOf<MethodChannelFacebookSdk>());
    });

    test('Cannot be implemented with `implements`', () {
      expect(() {
        FacebookSdkPlatform.instance = ImplementsFacebookSdkPlatform();
      }, throwsA(isInstanceOf<AssertionError>()));
    });

    test('Can be mocked with `implements`', () {
      final FacebookSdkPlatformMock mock = FacebookSdkPlatformMock();
      FacebookSdkPlatform.instance = mock;
    });

    test('Can be extended', () {
      FacebookSdkPlatform.instance = ExtendsFacebookSdkPlatform();
    });
  });

}