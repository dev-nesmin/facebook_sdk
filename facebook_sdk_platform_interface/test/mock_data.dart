/*
 * ---------------------------
 * File : mock_data.dart
 * ---------------------------
 * Author : nesmin
 * Date : Tue Nov 30 2021 12:44:18 PM
 * Copyright (c) 2021 
 * ---------------------------
 */


import 'package:facebook_sdk_platform_interface/facebook_sdk_platform_interface.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class FacebookSdkPlatformMock extends Mock
    with MockPlatformInterfaceMixin
    implements FacebookSdkPlatform {}

class ImplementsFacebookSdkPlatform extends Mock
    implements FacebookSdkPlatform {}

class ExtendsFacebookSdkPlatform extends FacebookSdkPlatform {

}