//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Jorge Macias on 11/11/14.
//  Copyright (c) 2014 Jorge Macias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var randomFactLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    var myTigers:[Tiger]=[]
    var lions:[Lion]=[]
    
    
    var currentIndex=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myTiger = Tiger()
        myTiger.age = 3
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.image=UIImage(named: "bengalTiger2.jpg")
        myTigers.append(myTiger)
        myTiger.chuff()
        println("my tigers name is: \(myTiger.name) and the age is: \(myTiger.age)")
        myImageView.image=myTiger.image
        nameLabel.text=myTiger.name
        ageLabel.text="\(myTiger.age)"
        breedLabel.text=myTiger.breed
        randomFactLabel.text=myTiger.radomFact()
        
        var secondTiger=Tiger()
        secondTiger.name="Tigress"
        secondTiger.breed="Indochinese Tiger"
        secondTiger.age=2
        secondTiger.image=UIImage(named: "indochineseTiger.jpg")
        var thirdTiger=Tiger()
        thirdTiger.name="Jacob"
        thirdTiger.breed="Malayan Tiger"
        thirdTiger.age=4
        thirdTiger.image=UIImage(named: "malayanTiger.jpg")
        var fourthTiger=Tiger()
        fourthTiger.name="Spar"
        fourthTiger.breed="Siberian Tiger"
        fourthTiger.age=5
        fourthTiger.image=UIImage(named: "siberianTiger.jpg")
        var fifthTiger=Tiger()
        fifthTiger.name="Pelusa"
        fifthTiger.breed="Cat"
        fifthTiger.age=9
        fifthTiger.image=UIImage(named: "ordinaryCat.jpg")
        myTigers+=[secondTiger,thirdTiger,fourthTiger,fifthTiger]
        //How we create a instance of a lion
        var lion=Lion()  // first lion instance
        lion.age=4
        lion.isAlphaMale=false
        lion.image=UIImage(named: "Lion.jpg")
        lion.name="Mufasa"
        lion.subspecies="West African"
        println("lion ages is \(lion.age)")
        var lioness=Lion()
        lioness.age=3
        lioness.isAlphaMale=false
        lioness.image=UIImage(named: "Lioness.jpg")
        lioness.name="Sarabi"
        lioness.subspecies="Barbary"
        self.lions+=[lion,lioness]
        var cub=LionCub()
        cub.age=1
        cub.name="Zimba"
        cub.image=UIImage(named: "")
        cub.subspecies="Masai"
        cub.roar()
        cub.rubLionCubsBelly()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtomItemPressed(sender: AnyObject) {
        var randomIndex:Int
        do{
            randomIndex=Int(arc4random_uniform(UInt32(myTigers.count)))
        } while currentIndex==randomIndex
        currentIndex=randomIndex
        let tiger=myTigers[randomIndex]
//        myImageView.image=tiger.image
//        nameLabel.text=tiger.name
//        ageLabel.text="\(tiger.age)"
//        breedLabel.text=tiger.breed
        println("random index: \(randomIndex)")
        UIView.transitionWithView(self.view,duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:{
            self.myImageView.image=tiger.image
            self.nameLabel.text=tiger.name
            self.ageLabel.text="\(tiger.age)"
            self.breedLabel.text=tiger.breed
            self.randomFactLabel.text=tiger.radomFact()
            }, completion: {(finished:Bool)->() in})
        
        
    }

}

