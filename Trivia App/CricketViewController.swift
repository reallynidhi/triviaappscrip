//
//  CricketViewController.swift
//  Trivia App
//
//  Created by Nidhi Soni on 17/10/21.
//

import UIKit

class CricketViewController: UIViewController {

    @IBOutlet weak var sachinBtn: UIButton!
    @IBOutlet weak var viratBtnm: UIButton!
    @IBOutlet weak var adamBtn: UIButton!
    @IBOutlet weak var JacquesBtn: UIButton!
    
    let checkedImage = UIImage(named: "selected")! as UIImage
    let uncheckedImage = UIImage(named: "unselected")! as UIImage
    
    var bestCricketer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sachinTendulkarSelected(_ sender: Any) {
        
        // selects only one option
        
        sachinBtn.setImage(checkedImage, for: .normal)
        viratBtnm.setImage(uncheckedImage, for: .normal)
        adamBtn.setImage(uncheckedImage, for: .normal)
        JacquesBtn.setImage(uncheckedImage, for: .normal)
        bestCricketer = "Sachin Tendulkar"
    }
    
    
    @IBAction func viratKohliSelected(_ sender: Any) {
        // selects only one option
        
        viratBtnm.setImage(checkedImage, for: .normal)
        sachinBtn.setImage(uncheckedImage, for: .normal)
        adamBtn.setImage(uncheckedImage, for: .normal)
        JacquesBtn.setImage(uncheckedImage, for: .normal)
        bestCricketer = "Virat Kohli"
    }
    
    
    @IBAction func AdamGilSelected(_ sender: Any) {
        // selects only one option
        
        adamBtn.setImage(checkedImage, for: .normal)
        sachinBtn.setImage(uncheckedImage, for: .normal)
        viratBtnm.setImage(uncheckedImage, for: .normal)
        JacquesBtn.setImage(uncheckedImage, for: .normal)
        bestCricketer = " Adam Gilchirst"
    }
    
    
    @IBAction func JacquesKalSelected(_ sender: Any) {
        // selects only one option
        
        JacquesBtn.setImage(checkedImage, for: .normal)
        viratBtnm.setImage(uncheckedImage, for: .normal)
        sachinBtn.setImage(uncheckedImage, for: .normal)
        adamBtn.setImage(uncheckedImage, for: .normal)
        bestCricketer = "Jacques Kallis"
    }
    
    
    @IBAction func nextBtnClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "FlagViewController") as! UIViewController
        UserDefaults.standard.set(bestCricketer, forKey: "cricketKey")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}
