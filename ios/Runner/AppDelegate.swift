import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // INICIO Configuración Google Maps
    GMSServices.provideAPIKey("AIzaSyD07BS5JuuyndnB-xgL6_He_sSWe2DwhI4")
    // FIN Configuración Google Maps
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
