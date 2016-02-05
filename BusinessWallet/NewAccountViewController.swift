//
//  NewAccountViewController.swift
//  BusinessWallet
//
//  Created by Mariah Sami Khayat on 2/5/16.
//  Copyright © 2016 BusinessWallet. All rights reserved.
//

import UIKit


// أضفت كلاسين: UIPickerViewDelegate,UIPickerViewDataSource عشان Picker  حقت التصنيف في إنشاء الحساب
class NewAccountViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource  {
    
    
    //أضفت Picker التصنيفات من الواجهة
    @IBOutlet weak var CategoryPicker: UIPickerView!
    
    
    //عرفت Array للتصنيفات
    var CategoryArrayforPicker:[String]=["Cooking","Beaty","Student Services","Art and Designe","Stores","Others"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
  
        CategoryPicker.delegate=self //عشان تشغيل ال picker
    CategoryPicker.dataSource=self
    
    
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

    
//ثلاثة دوال عشان الpicker حق الكاتيقوري
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CategoryArrayforPicker[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CategoryArrayforPicker.count
        
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
}
