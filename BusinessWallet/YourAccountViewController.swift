//
//  YourAccountViewController.swift
//  BusinessWallet
//
//  Created by Mariah Sami Khayat on 2/6/16.
//  Copyright © 2016 BusinessWallet. All rights reserved.
//

import UIKit

class YourAccountViewController: UIViewController {

    
    //أضفت عنصر الScroll
    @IBOutlet weak var YourAccountScrollView: UIScrollView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
         //غيرت طول الscroll view
        YourAccountScrollView.contentSize.height=1510
    }

    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
