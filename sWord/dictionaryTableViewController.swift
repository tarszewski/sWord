//
//  dictionaryTableViewController.swift
//  sWord
//
//  Created by Paweł Tarszewski on 23.04.2016.
//  Copyright © 2016 Paweł Tarszewski. All rights reserved.
//

import UIKit

class dictionaryTableViewController: UITableViewController {
    
    var dictionaries = [dictionary]()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadSample()
    }
    
    func loadSample() {
        let dictionary1 = dictionary()
        dictionary1.name = "Street"
        let word1 = word()
        word1.PL = "samochód"
        word1.ENG = "car"
        dictionary1.words += [word1]
        
        let dictionary2 = dictionary()
        dictionary2.name = "Kitchen"
        let word2 = word()
        word2.PL = "lodówka"
        word2.ENG = "fridge"
        let word3 = word()
        word3.PL = "talerz"
        word3.ENG = "plate"
        dictionary2.words += [word2, word3]
        
        dictionaries += [dictionary1, dictionary2]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dictionaries.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "dictionaryTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! dictionaryTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let dictionary = dictionaries[indexPath.row]
        
        cell.nameLabel.text = dictionary.name
        cell.countLabel.text = String(dictionary.number)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
