package com.nesmin.facebook_sdk_android

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** FacebookSdkPlugin */
class FacebookSdkPlugin: FlutterPlugin, ActivityAware {
  private val TAG = "FacebookSdkPlugin"
  private var methodCallHandler: MethodCallHandlerImpl? = null
  private var facebookSdk: FacebookSdk? = null


  override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    facebookSdk = FacebookSdk(binding.applicationContext)
    methodCallHandler = MethodCallHandlerImpl(facebookSdk)
    methodCallHandler.startListening(binding.binaryMessenger)
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
