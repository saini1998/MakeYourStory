//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle!
        let userDestination = storyBrain.getDestination(userChoice)
        
        storyBrain.nextStory(userDestination)
        
        updateUI()
    }
    
    func updateUI()  {
        
        storyLabel.text = storyBrain.getStoryText()
        let c1 = storyBrain.getChoice1()
        let c2 = storyBrain.getChoice2()
        choiceButton1.setTitle(c1, for: .normal)
        choiceButton2.setTitle(c2, for: .normal)
        
    }
    


}

