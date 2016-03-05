//
//  CategoriesView.swift
//  BusinessWallet
//
//  Created by bashayr almansor on 2/15/16.
//  Copyright © 2016 BusinessWallet. All rights reserved.
//

import UIKit
import Firebase

class CategoriesView: UITableViewController {

     // خلايا الجدول
    @IBOutlet weak var CheefsCell : UITableViewCell?
    @IBOutlet weak var BeautyCell : UITableViewCell?
    @IBOutlet weak var StudentServicesCell : UITableViewCell?
    @IBOutlet weak var ArtAndDesigneCell : UITableViewCell?
    @IBOutlet weak var StoreCell : UITableViewCell?
    @IBOutlet weak var OthersCell : UITableViewCell?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to preserve selection between presentations
     
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: - Table view data source
// عرفت عدد الاجزاء
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
// هنا عرفت عدد الخلايا
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
        
    }
    
    // عرفت الخلايا و الفهرسه الي فيها
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->  UITableViewCell {
let cell = tableView.dequeueReusableCellWithIdentifier("CCell", forIndexPath: indexPath)
        cell.accessoryType = .DisclosureIndicator
        // configure your cell here
        
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

    // MARK: - Navigation
// ربطت االواجهات بالخلايا
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if (segue.identifier=="CheefsSegue") {let _=segue.destinationViewController as! CheefsView}
            else  if (segue.identifier=="BeautySegue") {let _=segue.destinationViewController as! BeautyView}
            else if (segue.identifier=="StudentServiceSegue") {let _=segue.destinationViewController as! StudentServicesView}
            else  if (segue.identifier=="ArtAndDesigneSegue") {let _=segue.destinationViewController as! ArtAndDesigneView}
            else  if (segue.identifier=="StoeSegue") {let _=segue.destinationViewController as! StoreView}
            else  if (segue.identifier=="OthersSegue") {let _=segue.destinationViewController as! OthersView}
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        } }