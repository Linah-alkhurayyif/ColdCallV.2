//
//  ViewController.swift
//  ColdCallV.2
//
//  Created by Leena 1418 on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    let nameList = ["Liam","Olivia","Noah","Emma" , "Oliver"]
        var currentName:Int = 0
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func Cold_Call(_ sender: UIButton) {
        currentName = Int.random(in: 0..<5)
        let number = Int.random(in: 1...5)
            
        if number == 1 || number == 2{
            numberLabel.textColor = .red
        }else if number == 3 || number == 4{
            numberLabel.textColor = .orange
            
        }else{
            numberLabel.textColor = .green
            
        }
        numberLabel.text = "\(number)"
        nameLabel.text = nameList[currentName]
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = "Ready?"
        numberLabel.text = " "
    }


}

