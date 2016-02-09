//
//  EditAccountViewController.swift
//  BusinessWallet
//
//  Created by Hissah on 2/9/16.
//  Copyright © 2016 BusinessWallet. All rights reserved.
//

import UIKit

//أضفنا كلاسين UIPickerViewDelegate و UIPickerViewDataSource
class EditAccountViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    //ربطنا ال picker view الموجود في ال storyboard كـ outlet
    @IBOutlet weak var EditAccountPickerView: UIPickerView!
    
    //ربطنا ال scroll view كـ outlet
    @IBOutlet weak var EditAccountScrollView: UIScrollView!
  
    // مصفوفة للتصنيفات نفسها الموجودة في كلاس NewAccount
    var CategoryArray:[String]=["Cheefs","Beauty","Student Services","Art & Designe","Store", "Others"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
     // تغيير طول ال scroll view
        EditAccountScrollView.contentSize.height=1320
        
        
        // لتنفيذ ال picker تابعة للكلاسين اللي أضفناها فوق
        EditAccountPickerView.delegate=self
        EditAccountPickerView.dataSource=self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // دوال ال picker
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CategoryArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CategoryArray.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    

}
