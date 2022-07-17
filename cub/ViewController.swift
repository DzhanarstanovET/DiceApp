//
//  ViewController.swift
//  cub
//
//  Created by Ержан Джанарстанов on 03.04.2022.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var cubTwoImage: UIImageView!
    @IBOutlet private weak var cubOneImage: UIImageView!
    @IBOutlet private weak var welcomeImage: UIImageView!
    
    @IBOutlet private weak var labelName: UILabel!
    private var arrayImage: [String: UIImage] = ["1": #imageLiteral(resourceName: "dice-1"), "2": #imageLiteral(resourceName: "dice-2"), "3": #imageLiteral(resourceName: "dice-3"), "4": #imageLiteral(resourceName: "dice-4"), "5": #imageLiteral(resourceName: "dice-5"), "6" : #imageLiteral(resourceName: "dice-5") ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeImage.image = UIImage(named: "welcome")
       
    }

   private var numberOftaps = 0
    
    private var live = 3
    
    @IBAction private func tapButton(_ sender: Any) {

        let elementsOne = arrayImage.randomElement()
        let elementsTwo = arrayImage.randomElement()
        cubOneImage.image = elementsOne?.value
        cubTwoImage.image = elementsTwo?.value
        labelName.text = ""
        
        if numberOftaps < live {
            if elementsOne?.value == elementsTwo?.value {
                labelName.text = "You win 1000$"
                numberOftaps = 0
            }
            self.numberOftaps += 1
        } else {
            labelName.text = "You Lose!"
            numberOftaps = 0
        }
        
        self.numberOftaps += 1
        
    }
    
} 

