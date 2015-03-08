import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: Properties

    var window: UIWindow!
    
    // MARK: Application Life Cycle

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        
        let path = NSBundle.mainBundle().pathForResource("data", ofType: "txt")
        var text = String(contentsOfFile: path!, encoding: NSUTF8StringEncoding, error: nil)!
        var lines = text.componentsSeparatedByString("\n")
        
        var products = Array<Product>()
        
        for line in lines {
            var tokenized = line.componentsSeparatedByString("###") // ### Separated data
            products.append(Product(type: Product.deviceTypeTitle, name: tokenized[0], year: tokenized[1], price: tokenized[2]))
        }

        let navController = window.rootViewController as UINavigationController
        
        // Note we want the first view controller (not the visibleViewController) in case
        // we are being store from UIStateRestoration.
        let tableViewController = navController.viewControllers[0] as MainTableViewController
        tableViewController.products = products

        return true
    }

    // MARK: UIStateRestoration

    func application(application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
        return true
    }
    
    func application(application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool {
        return true
    }
}

