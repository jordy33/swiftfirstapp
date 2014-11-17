//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Jorge Macias on 11/14/14.
//  Copyright (c) 2014 Jorge Macias. All rights reserved.
//

import Foundation
import UIKit

class Lion{
 var age=0 //property
 var isAlphaMale = false
 var image = UIImage(named:"")
 var name = ""
 var subspecies = ""

func roar(){
    println("Lion:roar")
    }
    
    func changeToAlphaMale(){
    self.isAlphaMale=true
    }
  
}