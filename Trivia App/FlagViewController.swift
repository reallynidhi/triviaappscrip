//
//  FlagViewController.swift
//  Trivia App
//
//  Created by Nidhi Soni on 17/10/21.
//

import UIKit

class FlagViewController: UIViewController {
    
    
    @IBOutlet weak var whiteBtn: UIButton!
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    
    var colors: [String] = []   // stores all colors selected in this
    
    let checkedImage = UIImage(named: "selected")! as UIImage
    let uncheckedImage = UIImage(named: "unselected")! as UIImage
    
    // unselect on second tap
    var secondTapOnWhite = false
    var secondTapOnYellow = false
    var secondTapOnOrange = false
    var secondTapOnGreen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func whiteSelected(_ sender: Any) {
       
        if (secondTapOnWhite) {
            //Second Tap
            whiteBtn.setImage(uncheckedImage, for: .normal)
            colors.removeAll { $0 == "White" }
            secondTapOnWhite = false
        }
        else {
              //First Tap
            whiteBtn.setImage(checkedImage, for: .normal)
            colors.append("White")
            secondTapOnWhite = true
            }
    }
    
    @IBAction func yellowSelected(_ sender: Any) {
       
        if (secondTapOnYellow) {
            //Second Tap
            yellowBtn.setImage(uncheckedImage, for: .normal)
            colors.removeAll { $0 == "Yellow" }
            secondTapOnYellow = false
        }
        else {
              //First Tap
            yellowBtn.setImage(checkedImage, for: .normal)
            colors.append("Yellow")
            secondTapOnYellow = true
            }
    }
    
    @IBAction func orangeSelected(_ sender: Any) {
      
        if (secondTapOnOrange) {
            //Second Tap
            orangeBtn.setImage(uncheckedImage, for: .normal)
            colors.removeAll { $0 == "Orange" }
            secondTapOnOrange = false
        }
        else {
              //First Tap
            orangeBtn.setImage(checkedImage, for: .normal)
            colors.append("Orange")
            secondTapOnOrange = true
            }
    }
    
    @IBAction func greenSelected(_ sender: Any) {
       
        if (secondTapOnGreen) {
            //Second Tap
            greenBtn.setImage(uncheckedImage, for: .normal)
            colors.removeAll { $0 == "Green" }
            secondTapOnGreen = false
        }
        else {
              //First Tap
            greenBtn.setImage(checkedImage, for: .normal)
            colors.append("Green")
            secondTapOnGreen = true
            }
        
    }

    @IBAction func nextBtnClicked(_ sender: Any) {
        let colorString = colors.joined(separator: ", ")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SummaryViewController") as! UIViewController
        UserDefaults.standard.set(colorString, forKey: "flagKey")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    
}
