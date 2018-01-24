//
//  recordViewController.swift
//  pj01
//
//  Created by Kevin on 2018/1/23.
//  Copyright © 2018年 Kevin. All rights reserved.
//

import UIKit

class recordViewController: UIViewController {

    @IBOutlet weak var txtMoney: UITextField!
    @IBOutlet weak var txtDate: UITextField!
    @IBOutlet weak var segType: UISegmentedControl!
    @IBOutlet weak var txtDesc: UITextView!
    
    // life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 這一頁,的view,然後關閉編輯(YES)
        self.view.endEditing(true)
    }
    
    // action
    @IBAction func btnSave(_ sender: Any) {
        print("金額：\(txtMoney.text!)")
        
    }
    
    
    @IBAction func actDateEditing(_ sender: UITextField) {
        
        var dp = UIDatePicker()
        dp.datePickerMode = UIDatePickerMode.date
        dp.locale = Locale(identifier: "zh-TW")
        sender.inputView = dp
        //新增觸法
        dp.addTarget(self, action: #selector(handleDatePicker(sender:)), for: UIControlEvents.valueChanged)
        
    }
    @objc func handleDatePicker(sender : UIDatePicker){
        
        var df =  DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        //逕行轉換
        let dates:String = df.string(from: sender.date)
        //設定
        txtDate.text = dates
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
