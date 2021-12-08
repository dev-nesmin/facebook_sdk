package com.nesmin.facebook_sdk_android

import android.app.Activity
import android.content.Context

/**  */
class FacebookSdk(
    private val applicationContext: Context,
    private var activity: Activity? = null
) {
    private val TAG = "FacebookSdk"

    fun setActivity(activity: Activity?) {
        this.activity = activity
    }
}