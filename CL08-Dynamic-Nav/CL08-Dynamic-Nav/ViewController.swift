//
//  ViewController.swift
//  CL08-Dynamic-Nav
//
//  Created by Luna Jia on 4/5/24.
//

import UIKit

class ViewController: UITableViewController {
    var cv_arrayLabel: [String] = ["Spring","Summer","Fall","Winter"]
    var cv_arrayImg: [String] = ["t1.png", "t2.png", "t3.png", "t4.png"]
    var cv_arrayImg2: [String] = ["Spring.jpg", "Summer.jpg", "Fall.jpg", "Winter.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cv_arrayLabel.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell:MyTableViewCellController = self.tableView.dequeueReusableCell(withIdentifier: "vv_SimpleCell")! as! MyTableViewCellController

                cell.vv_lbseason?.text = self.cv_arrayLabel[indexPath.row]
                cell.vv_imgView?.image = UIImage(named: self.cv_arrayImg[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 45
        }

        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let rowValue = cv_arrayLabel[(indexPath as NSIndexPath).row]
   
        }
    
    @IBOutlet var vv_tableView: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "vv_segueForward") {
            if let destination = segue.destination as? MySubViewController {
                if let lv_index = vv_tableView.indexPathForSelectedRow {
                    //destination.cv_model = cv_arrayModel[lv_index.row]
                    destination.cv_img = cv_arrayImg2[(lv_index as NSIndexPath).row]
                }
            }
        }
    }

}

