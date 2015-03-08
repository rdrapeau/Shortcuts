import UIKit

class BaseTableViewController: UITableViewController {
    // MARK: Types
    
    struct Constants {
        struct Nib {
            static let name = "TableCell"
        }
        
        struct TableViewCell {
            static let identifier = "cellID"
        }
    }
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: Constants.Nib.name, bundle: nil)
        
        // Required if our subclasses are to use: dequeueReusableCellWithIdentifier:forIndexPath:
        tableView.registerNib(nib, forCellReuseIdentifier: Constants.TableViewCell.identifier)
    }
    
    // MARK:
    
    func configureCell(cell: UITableViewCell, forProduct product: Product) {
        cell.textLabel.text = product.title
        cell.detailTextLabel?.text = "\(product.yearIntroduced)"
    }
}