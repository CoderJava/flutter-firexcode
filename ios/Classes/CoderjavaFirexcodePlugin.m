#import "CoderjavaFirexcodePlugin.h"
#if __has_include(<coderjava_firexcode/coderjava_firexcode-Swift.h>)
#import <coderjava_firexcode/coderjava_firexcode-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "coderjava_firexcode-Swift.h"
#endif

@implementation CoderjavaFirexcodePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCoderjavaFirexcodePlugin registerWithRegistrar:registrar];
}
@end
