import Flutter
import UIKit

public class SwiftCoderjavaFirexcodePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "coderjava_firexcode", binaryMessenger: registrar.messenger())
    let instance = SwiftCoderjavaFirexcodePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
