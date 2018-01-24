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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSave(_ sender: Any) {
        print("金額：\(txtMoney.text!)")
        
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
