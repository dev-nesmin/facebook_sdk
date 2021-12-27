package com.nesmin.facebook_sdk_android

import io.flutter.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding

/** FacebookSdkPlugin */
private const val TAG = "FacebookSdkPlugin"

class FacebookSdkPlugin : FlutterPlugin, ActivityAware {

    private var methodCallHandler: MethodCallHandlerImpl? = null
    private var facebookSdk: FacebookSdk? = null


    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        facebookSdk = FacebookSdk(binding.applicationContext)
        methodCallHandler = MethodCallHandlerImpl(facebookSdk!!)
        methodCallHandler?.startListening(binding.binaryMessenger)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        if (methodCallHandler == null) {
            Log.wtf(TAG, "Already detached from the engine.")
            return
        }

        methodCallHandler?.stopListening()
        methodCallHandler = null
        facebookSdk = null
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        if (methodCallHandler == null) {
            Log.wtf(TAG, "facebookSdk was never set.")
            return
        }
        facebookSdk?.setActivity(binding.activity)
    }
     override fun onDetachedFromActivity() {
        if (methodCallHandler == null) {
            Log.wtf(TAG, "facebookSdk was never set.")
            return
        }

        facebookSdk?.setActivity(null)
    }

    override fun onDetachedFromActivityForConfigChanges() {
     onDetachedFromActivity();
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        onAttachedToActivity(binding);
    }

   


}
