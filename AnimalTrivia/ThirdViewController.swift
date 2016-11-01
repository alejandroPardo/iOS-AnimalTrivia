//
//  ThirdViewController.swift
//  AnimalTrivia
//
//  Created by Alejandro Pardo Rodriguez on 20/02/16.
//  Copyright © 2016 Alejandro Pardo. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var aLabel: UILabel!
    
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var bLabel: UILabel!
    
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var startOverButton: UIButton!
    
    let myRedColor = UIColor(red: 0.98, green: 0.39, blue: 0.4, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        startOverButton.layer.cornerRadius = 7.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func aButtonPressed(_ sender: UIButton) {
        let incorrectAnswerImage = UIImage(named: "incorrectAnswer")
        aButton.setImage(incorrectAnswerImage, for: UIControlState())
        aLabel.textColor = myRedColor
        disableButtons()
    }
    
    @IBAction func bButtonPressed(_ sender: UIButton) {
        let incorrectAnswerImage = UIImage(named: "incorrectAnswer")
        bButton.setImage(incorrectAnswerImage, for: UIControlState())
        bLabel.textColor = myRedColor
        disableButtons()
    }
    
    @IBAction func cButtonPressed(_ sender: UIButton) {
        let correctAnswerImage = UIImage(named: "correctAnswer")
        cButton.setImage(correctAnswerImage, for: UIControlState())
        cLabel.textColor = UIColor.green
        disableButtons()
    }
    
    func disableButtons(){
        aButton.isEnabled = false
        bButton.isEnabled = false
        cButton.isEnabled = false
    }
}
