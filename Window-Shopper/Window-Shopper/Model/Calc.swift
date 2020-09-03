//
//  Calc.swift
//  Window-Shopper
//
//  Created by ali hashmi on 02/09/20.
//  Copyright © 2020 ali hashmi. All rights reserved.
//

import Foundation


class Calc
{
    class func Hours(Price : Double, earning : Double) -> Int
    {
        return Int(ceil(Price/earning))
    }
}
