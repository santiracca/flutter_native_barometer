import UIKit
import Flutter
import CoreMotion

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
        
    
    ////
    let METHOD_CHANNEL_NAME = "com.pareto.barometer/method"
    let PRESSURE_CHANNEL_NAME = "com.pareto.barometer/pressure"
    
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    
    let methodChannel = FlutterMethodChannel(name: METHOD_CHANNEL_NAME, binaryMessenger: controller.binaryMessenger)
    
    
    
    methodChannel.setMethodCallHandler({
        (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
        switch call.method {
        case "isSensorAvailable":
            result(CMAltimeter.isRelativeAltitudeAvailable())
        default:
            result(FlutterMethodNotImplemented)
        }
    })
    
    
    
    
    
    ////
    
    
    
    
    
    
    
    
    
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
