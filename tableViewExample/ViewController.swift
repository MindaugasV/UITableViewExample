import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var allTitles: NSArray = ["Indiana Jones", "James Bond", "Man in Black"]
    var allNames: NSArray = ["Jon", "Rob", "Stark", "Brian", "Musk"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return allTitles.count
        case 1:
            return allNames.count
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NamesCellIdentifier", forIndexPath: indexPath)
        switch indexPath.section {
        case 0:
            let name = allTitles[indexPath.row]
            cell.textLabel?.text = name as? String
        case 1:
            let name = allNames[indexPath.row]
            cell.textLabel?.text = name as? String
        default:
            break
        }
        return cell
    }
}



