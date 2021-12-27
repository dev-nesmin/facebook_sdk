package com.nesmin.facebook_sdk_android

import io.flutter.Log
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel


/** Forwards all incoming MethodChannel calls to the given 'FacebookSdk'. */
private const val TAG = "MethodCallHandlerImpl"

class MethodCallHandlerImpl(
    private val facebookSdk: FacebookSdk
) : MethodChannel.MethodCallHandler {
    private var channel: MethodChannel? = null


    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            Constants.initializeMethod -> initialize(call, result)
            else -> result.notImplemented()
        }
    }

    /**
     * Registers this instance as a method call handler on the given {@code messenger}.
     *
     * <p>Stops any previously started and unstopped calls.
     *
     * <p>This should be cleaned with {@link #stopListening} once the messenger is disposed of.
     */
    fun startListening(messenger: BinaryMessenger) {
        if (channel != null) {
            Log.wtf(TAG, "Setting a method call handler before the last was disposed.")
            stopListening()
        }
        channel = MethodChannel(messenger, Constants.channel)
        channel?.setMethodCallHandler(this)
    }

    /**
     * Clears this instance from listening to method calls.
     *
     * <p>Does nothing if {@link #startListening} hasn't been called, or if we're already stopped.
     */
    fun stopListening() {
        if (channel == null) {
            Log.d(TAG, "Tried to stop listening when no MethodChannel had been initialized.")
            return
        }

        channel!!.setMethodCallHandler(null)
        channel = null
    }


    private fun initialize(call: MethodCall, result: MethodChannel.Result) {
        val enableAutoLogAppEvents: Boolean = call.argument(Constants.keyEnableAutoLogAppEvents) ?: true

        result.success(
            facebookSdk.initialize(
                enableAutoLogAppEvents
            )
        )
    }

}