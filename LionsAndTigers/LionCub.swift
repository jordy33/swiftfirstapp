//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Jorge Macias on 11/14/14.
//  Copyright (c) 2014 Jorge Macias. All rights reserved.
//

import Foundation
class LionCub: Lion{
    
    var isMale=false
    
    func rubLionCubsBelly(){
     println("LionCub: snuggle")
    }
    override func roar() {
        println("Lion cub: Growl Growl")
    }
}
