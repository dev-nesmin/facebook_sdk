package com.nesmin.facebook_sdk_android

import android.app.Activity
import android.content.Context
import io.flutter.Log
import com.facebook.FacebookSdk as FB

/**  */
private const val TAG = "FacebookSdk"

class FacebookSdk(
    private val applicationContext: Context,
    private var activity: Activity? = null
) {


    fun setActivity(activity: Activity?) {
        this.activity = activity
    }

    /**
     * initialize the facebook sdk
     *
     * @param enableAutoLogAppEvents when true enables Facebook Automatically Logged App Events
     */
    fun initialize(
        enableAutoLogAppEvents: Boolean = true,
    ): Boolean {
        return try {
            FB.setAutoInitEnabled(true)
            FB.fullyInitialize()
            FB.setAutoLogAppEventsEnabled(enableAutoLogAppEvents)
            true;
        } catch (e: Exception) {
            Log.wtf(TAG, "Exception : $e")
            false;
        }


    }


}