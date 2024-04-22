//
//  ViewController.swift
//  CL08-Dynamic-Nav
//
//  Created by Luna Jia on 4/5/24.
//

import UIKit

class ViewController: UITableViewController {
    var cv_arrayLabel: [String] = ["Miso Soup","Mochi","Salmon Teriyaki"]
    var cv_arrayImg: [String] = ["Miso Soup.png", "Mochi.png", "Salmon Teriyaki.png"]
    var cv_arrayImg2: [String] = ["Miso Soup.jpg", "Mochi.jpg", "Salmon Teriyaki.jpg"]
    var cv_arrayRecipeLabel: [String] = ["In a medium saucepan over medium-high heat, combine dashi granules and water; bring to a boil. Reduce heat to medium, and whisk in the miso paste. Stir in tofu. Separate the layers of the green onions, and add them to the soup. Simmer gently for 2 to 3 minutes before serving.","Wrap red bean paste in aluminum foil and place in the freezer for at least 3 hours. Mix sweet rice flour and green tea powder thoroughly in a microwave-safe glass or ceramic bowl. Stir in water, then sugar. Mix until smooth. Cover bowl with plastic wrap.Cook the rice flour mixture in the microwave for 3 minutes and 30 seconds. Meanwhile, remove red bean paste from the freezer and divide paste into 8 equal balls. Set aside. Stir rice flour mixture and heat for another 15 to 30 seconds.","Mix sesame oil, lemon juice, soy sauce, brown sugar, sesame seeds, ground mustard, ginger, and garlic powder in a small saucepan over low heat. Bring to a simmer, stirring until sugar has dissolved. Set aside 1/2 cup of marinade for basting.Pour remaining marinade into a resealable plastic bag and place salmon into the marinade. Squeeze air out of the bag, seal, and marinate the salmon steaks for at least 1 hour (2 hours for better flavor). Drain and discard used marinade."]

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
                    let selectedRecipeName = cv_arrayLabel[lv_index.row]  // Get the recipe name
                    //destination.cv_model = cv_arrayModel[lv_index.row]
                    destination.cv_img = cv_arrayImg2[(lv_index as NSIndexPath).row]
                    destination.cv_recipeText = cv_arrayRecipeLabel[lv_index.row]
                    destination.cv_recipeName = selectedRecipeName  // Pass the recipe name
                    destination.cv_title = selectedRecipeName 
                }
            }
        }
    }

}

