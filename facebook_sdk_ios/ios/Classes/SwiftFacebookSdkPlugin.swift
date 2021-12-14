import Flutter
import UIKit
import FBSDKCoreKit

public class SwiftFacebookSdkPlugin: NSObject, FlutterPlugin {
    let facebookSdk = FacebookSdk()
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: Constants.channel, binaryMessenger: registrar.messenger())
        let instance = SwiftFacebookSdkPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        registrar.addApplicationDelegate(instance)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case Constants.initializeMethod:
            initialize(call: call, result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    private func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        Settings.shared.isAdvertiserTrackingEnabled = false
        ApplicationDelegate.shared.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
        
        return true
    }
    
    public func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {
        ApplicationDelegate.shared.application(
            app,
            open: url,
            sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
            annotation: options[UIApplication.OpenURLOptionsKey.annotation]
        )
    }
    
    private func initialize(call: FlutterMethodCall, result: @escaping FlutterResult) {
        let enableAutoLogAppEvents: Bool? = (call.arguments as? [String: Any])?[Constants.keyEnableAutoLogAppEvents] as? Bool
        result(
            facebookSdk.initialize(
                enableAutoLogAppEvents ?? true
            )
        )
    }
    
}
