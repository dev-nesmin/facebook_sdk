import 'dart:async';

import 'package:flutter/services.dart';

import 'facebook_sdk_platform_interface.dart';

/*
 * ---------------------------
 * File : method_channel_facebook_sdk.dart
 * ---------------------------
 * Author : nesmin
 * Date : Tue Nov 30 2021 11:58:49 AM
 * Copyright (c) 2021 
 * ---------------------------
 */

const MethodChannel _channel = MethodChannel('com.nesminnn.facebook_sdk');

/// An implementation of [FacebookSdkPlatform] that uses method channels.
class MethodChannelFacebookSdk extends FacebookSdkPlatform {
  @override
  Future<bool> initialize() {
    return _channel
        .invokeMethod<bool>(
          'initialize',
        )
        .then((value) => value ?? false);
  }
}
