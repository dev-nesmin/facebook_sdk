import 'dart:async';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel_facebook_sdk.dart';
/*
 * ---------------------------
 * File : facebook_sdk_platform_interface.dart
 * ---------------------------
 * Author : nesmin
 * Date : Tue Nov 30 2021 11:59:11 AM
 * Copyright (c) 2021 
 * ---------------------------
 */

/// The interface that implementations of facebook_sdk must implement.
///
/// Platform implementations should extend this class rather than implement it as `facebook_sdk`
/// does not consider newly added methods to be breaking changes. Extending this class
/// (using `extends`) ensures that the subclass will get the default implementation, while
/// platform implementations that `implements` this interface will be broken by newly added
/// [FacebookSdkPlatform] methods.
abstract class FacebookSdkPlatform extends PlatformInterface {
  /// Constructs a FacebookSdkPlatform.
  FacebookSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static FacebookSdkPlatform _instance = MethodChannelFacebookSdk();

  /// The default instance of [FacebookSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelFacebookSdk].
  static FacebookSdkPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [FacebookSdkPlatform] when they register themselves.
  static set instance(FacebookSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Initialize the facebook sdk tools. Completes to [true] if the Initialize was successful.
  Future<bool> initialize(
    {
      bool enableAutoLogAppEvents = true
    }  
  ) {
    throw UnimplementedError('initialize() has not been implemented.');
  }
}
