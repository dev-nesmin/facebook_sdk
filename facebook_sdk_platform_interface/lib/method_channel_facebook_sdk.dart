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

const MethodChannel _channel = MethodChannel('com.nesmin.facebook_sdk');

/// An implementation of [FacebookSdkPlatform] that uses method channels.
class MethodChannelFacebookSdk extends FacebookSdkPlatform {
  
  @override
  Future<bool> initialize({
    required bool enableAutoLogAppEvents,
  }) async {
    return await _channel.invokeMethod<bool>(
      'initialize',
      <String, Object>{
        'enableAutoLogAppEvents': enableAutoLogAppEvents,
      },
    ).then((value) => value ?? false);
  }
}
