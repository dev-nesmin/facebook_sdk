/*
 * ---------------------------
 * File : facebook_sdk.dart
 * ---------------------------
 * Author : nesmin
 * Date : Tue Nov 30 2021 2:24:22 PM
 * Copyright (c) 2021 
 * ---------------------------
 */

import 'dart:async';

import 'package:facebook_sdk_platform_interface/facebook_sdk_platform_interface.dart';

class FacebookSdk {
  /// The platform interface that drives this plugin
  static FacebookSdkPlatform get platform => FacebookSdkPlatform.instance;

  ///simple checking if facebook is entegrated successfully
  Future<bool> initialize({
    bool enableAutoLogAppEvents = true,
  }) async {
    return await platform
        .initialize(enableAutoLogAppEvents: enableAutoLogAppEvents);
  }
}
