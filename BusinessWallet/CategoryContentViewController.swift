//
//  CategoryContentViewController.swift
//  BusinessWallet
//
//  Created by bashayr almansor on 2/25/16.
//  Copyright © 2016 BusinessWallet. All rights reserved.
//

//
//هذا ملف تعريف الجدول الاول الي هو جدول التصنيفات
import UIKit

class CategoriesCell: UITableViewCell {
    // في هذا الكلاس عرفت محتويات الخليه و سميتهم
    @IBOutlet weak var Clable: UILabel!
    @IBOutlet weak var cdescription: UILabel!
    @IBOutlet weak var Cpicure: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

class CategoriesContent: NSObject {
    
    // هنا سوينا مصفوفه و عرفنا محتوياتها
    class func GetCategories()->[Categories] {
        // غيرت  عن الشرح وحطيته ثابت بدال المتغير
        let arr=[Categories(Cname: "Cheefs" , Cimage: "cheefs.PNG", Cdetails: "Sweet and ... ")
            ,Categories(Cname: "Beauty", Cimage: "Beauty.PNG", Cdetails: "Makeup Artist, Hair Stylest.")
            ,Categories(Cname: "Student Services", Cimage: "student server.PNG", Cdetails: "Document translator, Programmer,private tutors. ")
            ,Categories(Cname: "Art & Designe", Cimage: "Designers.PNG", Cdetails: "Interior design,Graphic design,Montage,Draftsman,Event coordinator,Fashion design.")
            ,Categories(Cname: "Store", Cimage: "shop.PNG", Cdetails: "Clothes , Books , Electronics. ")
            ,Categories(Cname: "Others", Cimage: "others.PNG", Cdetails: ".......")]
        return arr }
    
}
@objc class CategoriesView: UIViewController , UITableViewDataSource, UITableViewDelegate {
    // هنا عرفنا الجدول و عرفنا المصفوفه الي سويناها في ملف المحتويات
    @IBOutlet var CategoriesTable: UITableView!
    
    var content:[Categories]?
    // هنا حطينا امر انه يروح للمف الي اسمه categoriesContent و يجيب الملفات منها
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        CategoriesTable.dataSource=self
        content=CategoriesContent.GetCategories()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //   هذي الداله تحدد عدد خلايا الجدول
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return content!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell=self.CategoriesTable.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as! CategoriesCell
        cell.Clable.text=content! [indexPath.row].Cname
        cell.Cpicure.image=UIImage(named: content![indexPath.row].Cimage )
        cell.cdescription.text=content! [indexPath.row].Cdetails
        return cell }
}