
import 'dart:async';

import 'package:flutter/services.dart';

class FacebookSdkAndroid {
  static const MethodChannel _channel = MethodChannel('facebook_sdk_android');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
