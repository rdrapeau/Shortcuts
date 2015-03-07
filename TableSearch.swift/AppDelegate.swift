import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: Properties

    var window: UIWindow!
    
    // MARK: Application Life Cycle

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {

        let products = [
            Product(type: Product.deviceTypeTitle, name: "Import Photos", year: "Shift-Command-I", price: "Press Shift-Command-I to start the photo import process. You will be able to select photos to import from anywhere in your Mac."),
            Product(type: Product.deviceTypeTitle, name: "Export Photos", year: "Shift-Command-E", price: "Press Shift-Command-E to start the photo export process. You will be able to chose different file formats, sizes and quailties to export your photos to."),
            Product(type: Product.deviceTypeTitle, name: "Jump to Top of Library", year: "Home", price: "Press Home to move to the top of the photo library."),
            Product(type: Product.deviceTypeTitle, name: "Jump to Bottom of Library", year: "End", price: "Press End to move to the bottom of the photo library."),
            Product(type: Product.deviceTypeTitle, name: "Create Folder", year: "Option-Shift-Command-N", price: "Press Option-Shift-Command-N to create a new folder within your photo library."),
            Product(type: Product.deviceTypeTitle, name: "Create Album", year: "Shift-Command-N", price: "Press Shift-Command-N To create a new empty album within your photo library"),
            Product(type: Product.deviceTypeTitle, name: "Create Album From Selection", year: "Command-N", price: "Press Command-N to create a new album from photos that are selected (highlighted)."),
            Product(type: Product.deviceTypeTitle, name: "Create Smart Album", year: "Option-Command-N", price: "Press Option-Command-N to creat a new smart album. A smart album is a type of album that will automaticly fill itself with photos that it is set to find. For example a Smart Album that is set to find all photos from the year 1998."),
            Product(type: Product.deviceTypeTitle, name: "Set Event Photo", year: "Press Space Over Photo", price: "To set a key photo for an event hold the mouse over the event, move left or right to find the photo then press space on the keyboard. This works for a Faces group too. Another way to set the Key Photo is to go into the Event and right click the photo, then press \"Make Key Photo\""),
            Product(type: Product.deviceTypeTitle, name: "Scroll to Selected Event", year: "G", price: "Press G to scroll the selected even into view"),
            Product(type: Product.deviceTypeTitle, name: "Split Event", year: "S", price: "Highlight a picture in an event and Press S to split that picture and all pictures following it into a new event."),
            Product(type: Product.deviceTypeTitle, name: "Change Size of Thumbnails", year: "0, 2, 3, 1", price: "Press 0, 2, 3, 1 (smallest to largest) to change the size of the photo thumbnail."),
            Product(type: Product.deviceTypeTitle, name: "Magnify photo to fill view area", year: "Double-click Photo", price: "Double-click or press the space bar on a photo to magnify it to fit the viewing windows."),
            Product(type: Product.deviceTypeTitle, name: "Reduce photo to thumbnail", year: "Double-click magnified photo", price: "Double-click or press space on a  magnified photo to reduce it back into a thumbnail view."),
            Product(type: Product.deviceTypeTitle, name: "Open photo in edit view", year: "Return", price: "Press Return to open the selected photo in."),
            Product(type: Product.deviceTypeTitle, name: "Enter/Exit Full-Screen View", year: "Option-Command-F", price: "Press Option-Command-F to enter or exit the full-screen view."),
            Product(type: Product.deviceTypeTitle, name: "Show/Hide Titles", year: "Shift-Command-T", price: "Press Shift-Command-T to show or hide titles."),
            Product(type: Product.deviceTypeTitle, name: "Show/Hide Event Titles", year: "Shift-Command-F", price: "Press Shift-Command-F to show or hide even titles in the photos view."),
            Product(type: Product.deviceTypeTitle, name: "Show/Hide Hidden Photos", year: "Shift-Command-H", price: "Press Shift-Command-H to show or hide hidden photos."),
            Product(type: Product.deviceTypeTitle, name: "Show/Hide Ratings", year: "Shift-Command-R", price: "Press Shift-Command-R to show or hide ratings."),
            Product(type: Product.deviceTypeTitle, name: "Batch Change", year: "Shift-Command-B", price: "Press Shift-Command-B to batch change the title, data, or comments of all selected photos."),
            Product(type: Product.deviceTypeTitle, name: "Show photo information", year: "Command-I", price: "Press Command-I to show the slected photo's information."),
            Product(type: Product.deviceTypeTitle, name: "Rotate Photo", year: "Command-R", price: "Press Command-R to rotate the slected photo."),
            Product(type: Product.deviceTypeTitle, name: "Duplicate Photo", year: "Command-D", price: "Press Command-D to duplicate the slected photo."),
            Product(type: Product.deviceTypeTitle, name: "Cut Photo", year: "Command-X", price: "Press Command-X to cut the selected photo."),
            Product(type: Product.deviceTypeTitle, name: "Copy Photo", year: "Command-C", price: "Press Command-C to copy the slected photo."),
            Product(type: Product.deviceTypeTitle, name: "Paste Photo", year: "Command-V", price: "Press Command-V to paste the copied photo."),
            Product(type: Product.deviceTypeTitle, name: "Flag/Unflag a Photo", year: "Command-Period (.)", price: "Press Command-Period (.) to flag or unflag the selected photo."),
            Product(type: Product.deviceTypeTitle, name: "Hide/Show Hidden Photo", year: "Command-L", price: "Press Command-L to make a photo hidden. If the command is performed on a photo that is already hidden the photo will become visable again."),
            Product(type: Product.deviceTypeTitle, name: "Manage Keywords", year: "Command-K", price: "Press Command-K to manage keywords for a selected photo."),
            Product(type: Product.deviceTypeTitle, name: "Delete Published Album", year: "Command-Delete", price: "Press Command-Delete to delete a published album."),
            Product(type: Product.deviceTypeTitle, name: "Delete Photo", year: "Delete", price: "Press Delete on a selected photo to move it to the trash. To permenantly delete go to the trash folder on the left side of the application and press delete on the photo again."),
            Product(type: Product.deviceTypeTitle, name: "Move Photo to Trash", year: "Option-Command-Delete", price: "Press Option-Command-Delete to move the selected photo(s) to the trash."),
            Product(type: Product.deviceTypeTitle, name: "Empty Trash", year: "Shift-Command-Delete", price: "Press Shift-Command-Delete to empty the iPhoto trash."),
            Product(type: Product.deviceTypeTitle, name: "Select all Photos", year: "Command-A", price: "Press Command-A to select all photos."),
            Product(type: Product.deviceTypeTitle, name: "Deselect all Photos", year: "Shift-Command-A", price: "Press Shift-Command-A to deselect all photos"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
            Product(type: Product.deviceTypeTitle, name: "NAME_FILLER", year: "SHORTCUT_FILLER", price: "DESCRIPTION_FILLER"),
        ]

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

