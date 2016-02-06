//
//  NewAccountViewController.swift
//  BusinessWallet
//
//  Created by Mariah Sami Khayat on 2/5/16.
//  Copyright © 2016 BusinessWallet. All rights reserved.
//

import UIKit


//أضفت كلاسين UIPickerViewDelegate, UIPickerViewDataSource عشان الpicker view للتصنيفات
class NewAccountViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    //أضفت عنصر ال scroll
    @IBOutlet weak var NewAccountScrollView: UIScrollView!

    //أضفت عنصر الPicker للتصنيفات
    @IBOutlet weak var CategoryPicker: UIPickerView!
    
    
    //مصفوفة التصنيفات عشان Picker
    var CategoryArray:[String]=["Cheefs","Beauty","Student Services","Art & Designe","Store", "Others"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        //غيرت طول الscroll view
NewAccountScrollView.contentSize.height=1320
        
        
  //عشان تشغيل ال picker
    CategoryPicker.delegate=self
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
        return CategoryArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CategoryArray.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
    }

    
}
