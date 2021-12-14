#import "FacebookSdkPlugin.h"
#if __has_include(<facebook_sdk_ios/facebook_sdk_ios-Swift.h>)
#import <facebook_sdk_ios/facebook_sdk_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "facebook_sdk_ios-Swift.h"
#endif

@implementation FacebookSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFacebookSdkPlugin registerWithRegistrar:registrar];
}
@end
