//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Jorge Macias on 11/11/14.
//  Copyright (c) 2014 Jorge Macias. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0  //this is a property
    var name=""
    var breed=""
    var image=UIImage(named:"")
    var randomFact=""
    
    func chuff()
    {
     println("Tiger chuff chuff")
    }
    func chufNumberofTimes(numberOfTimes: Int){
    
        for var chuff2=0;chuff2<numberOfTimes;chuff2++
        {
          chuff()
        }
    }
    func chuffANumberOfTimes(numberOfTimes:Int,isloud:Bool){
        for var chuffTimes=1;chuffTimes<=numberOfTimes;chuffTimes{
            if isloud{
                chuff()
            }
        else
            {
             println("Tiger: purr purr")
                
            }
        }
    }
    func ageInTigerYearsFromAge(regularAge:Int)->Int{
     let newAge=regularAge*3
        return newAge
    }
    func radomFact()->String{
        let randomNumber=Int(arc4random_uniform(UInt32(3)))
        var randomFact:String
        var facts:[String]=[]
        facts.append("The tiger is the biggest species in the car family")
        facts.append("Tigers can reach a lenght of 3.3 meters")
        facts.append("A group of tigers is known as ambush or streak")
        return facts[randomNumber]
    }
}