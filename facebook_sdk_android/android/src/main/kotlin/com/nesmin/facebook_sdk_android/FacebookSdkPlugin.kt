package com.nesmin.facebook_sdk_android

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** FacebookSdkAndroidPlugin */
class FacebookSdkAndroidPlugin: FlutterPlugin, ActivityAware {
  private val TAG = "FacebookSdkAndroidPlugin"
  private val methodCallHandler: MethodCallHandlerImpl? = null
  private val facebookSdk: FacebookSdk? = null


  override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    TODO("Not yet implemented")
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    TODO("Not yet implemented")
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    TODO("Not yet implemented")
  }

  override fun onDetachedFromActivityForConfigChanges() {
    TODO("Not yet implemented")
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    TODO("Not yet implemented")
  }

  override fun onDetachedFromActivity() {
    TODO("Not yet implemented")
  }


}
