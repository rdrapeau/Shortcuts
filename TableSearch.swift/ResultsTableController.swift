import UIKit

class ResultsTableController : BaseTableViewController {
    // MARK: Properties
    
    var filteredProducts = [Product]()
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredProducts.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.TableViewCell.identifier) as UITableViewCell
        
        let product = filteredProducts[indexPath.row]
        configureCell(cell, forProduct: product)
        
        return cell
    }
}