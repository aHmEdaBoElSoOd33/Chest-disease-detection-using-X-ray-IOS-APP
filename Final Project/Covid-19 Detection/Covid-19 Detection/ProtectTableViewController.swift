//
//  ProtectTableViewController.swift
//  Covid-19 Detection
//
//  Created by Ahmed on 02/07/2022.
//

import UIKit

class ProtectTableViewController: UITableViewController {

    
    let steps = ["Get Vaccinated and stay up to date on your COVID-19 vaccines","Wear a mask","Stay 6 feet away from others","Avoid poorly ventilated spaces and crowds","Test to prevent spread to others","Wash your hands often","Cover coughs and sneezes","Clean and disinfect","Monitor your health daily","Take precautions when you travel"]
    let stepNum = [1,2,3,4,5,6,7,8,9,10]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       title = "Steps"
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
        return steps.count
    }

     
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProtectCell", for: indexPath) as! ProtectTableViewCell

        let image = steps[indexPath.row]
         let imageNum = stepNum[indexPath.row]
        cell.ImageView.image = UIImage(named: image)
        cell.Label.text = "\(imageNum) - \(image)"
        cell.ImageView.layer.cornerRadius = 20
        cell.ImageView.layer.borderWidth = 0.5
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
