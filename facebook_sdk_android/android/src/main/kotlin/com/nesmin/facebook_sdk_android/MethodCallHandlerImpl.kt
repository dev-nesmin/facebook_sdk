package com.nesmin.facebook_sdk_android

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

/** Forwards all incoming MethodChannel calls to the given 'FacebookSdk'. */
class MethodCallHandlerImpl(
   private val facebookSdk: FacebookSdk
) : MethodChannel.MethodCallHandler {
    private val TAG = "MethodCallHandlerImpl"
    private val channel: MethodChannel? = null






    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        TODO("Not yet implemented")
    }

}