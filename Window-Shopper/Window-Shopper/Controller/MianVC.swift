//
//  ViewController.swift
//  Window-Shopper
//
//  Created by ali hashmi on 31/08/20.
//  Copyright © 2020 ali hashmi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet var wageTxt: currencyTxt!
    @IBOutlet var priceTxt: currencyTxt!
    @IBOutlet var resultLbl: UILabel!
    
    @IBOutlet var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var calculatebtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
       
        calculatebtn.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        calculatebtn.setTitle("Calculate", for: .normal)
        calculatebtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculatebtn.addTarget(self, action:#selector(calcBtnAction), for: .touchUpInside)
        wageTxt.inputAccessoryView = calculatebtn
        priceTxt.inputAccessoryView = calculatebtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calcBtnAction()
    {
        if let price  = priceTxt.text, let wage = wageTxt.text
        {
         if let doubleprice  = Double(price) , let doublewage = Double(wage)
         {//view.endEditing(true)
            resultLbl.isHidden = false
             hoursLbl.isHidden = false
            resultLbl.text = "\(Calc.Hours(Price: doubleprice, earning: doublewage))"
            }
        }
        
        
        
              
    }

    @IBAction func clearCalc(_ sender: Any) {
        resultLbl.isHidden = true
               hoursLbl.isHidden = true
               wageTxt.text = ""
               priceTxt.text = ""
           }
    
}

