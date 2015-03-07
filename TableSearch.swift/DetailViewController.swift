import UIKit

class DetailViewController: UIViewController {
    // MARK: Types
    
    // Constants for Storyboard/ViewControllers
    struct StoryboardConstants {
        static let storyboardName = "MainStoryboard"
        static let viewControllerIdentifier = "DetailViewController"
    }

    // Constants for state restoration.
    struct RestorationKeys {
        static let restoreProduct = "restoreProductKey"
    }
    
    // MARK: Properties
    
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    var product: Product!
    
    // MARK: Factory Methods
    
    class func forProduct(product: Product) -> DetailViewController {
        let storyboard = UIStoryboard(name: StoryboardConstants.storyboardName, bundle: nil)

        let viewController = storyboard.instantiateViewControllerWithIdentifier(StoryboardConstants.viewControllerIdentifier) as DetailViewController
        
        viewController.product = product
        
        return viewController
    }
    
    // MARK: View Life Cycle
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        title = product.title
        
        yearLabel.text = "\(product.yearIntroduced)"
        
        let priceString = "\(product.introPrice)"
        priceLabel.text = priceString
    }
    
    // MARK: UIStateRestoration

    override func encodeRestorableStateWithCoder(coder: NSCoder) {
        super.encodeRestorableStateWithCoder(coder)
        
        // Encode the product.
        coder.encodeObject(product, forKey: RestorationKeys.restoreProduct)
    }
    
    override func decodeRestorableStateWithCoder(coder: NSCoder) {
        super.decodeRestorableStateWithCoder(coder)
        
        // Restore the product.
        if let decodedProduct = coder.decodeObjectForKey(RestorationKeys.restoreProduct) as? Product {
            product = decodedProduct
        }
        else {
            fatalError("A product did not exist. In your app, handle this gracefully.")
        }
    }
}