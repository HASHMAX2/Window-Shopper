//
//  currencyTxt.swift
//  Window-Shopper
//
//  Created by ali hashmi on 31/08/20.
//  Copyright © 2020 ali hashmi. All rights reserved.
//

import UIKit
@IBDesignable

class currencyTxt: UITextField
{
    override func draw(_ rect: CGRect) {
        var size : CGFloat = 20
        var currencylabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2 , width:  size, height: size))
        currencylabel.backgroundColor = #colorLiteral(red: 0.4980838895, green: 0.4951269031, blue: 0.5003594756, alpha: 0.4497806079)
        currencylabel.textAlignment = .center
        currencylabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencylabel.layer.cornerRadius = 5.0
        let currencyFormatter = NumberFormatter()
        currencylabel.clipsToBounds = true
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        // localize to your grouping and decimal separator
        currencyFormatter.locale = Locale.current // you can overrride a locale using an //identifier
        currencylabel.text = currencyFormatter.currencySymbol
        addSubview(currencylabel)
        
        
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        customview()
    }

    override func prepareForInterfaceBuilder() {
        customview()    }
    
   
    
    func customview()
    {
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.25)
            layer.cornerRadius = 5.0
            textAlignment = .center
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            if let p = placeholder
            {
                let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            attributedPlaceholder = place
            }
    }
    

}
