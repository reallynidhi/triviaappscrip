//
//  ViewController.swift
//  Trivia App
//
//  Created by Nidhi Soni on 17/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var warningLbl: UILabel!
    
    var playerName = " "
    var firstPlayer = true
    var numberOfPlayers = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        warningLbl.isHidden = true  // shown when textField is empty
        
    }

    @IBAction func nextBtnClicked(_ sender: Any) {
        playerName = nameTxtField.text!
        //check if name textField is empty or not
        if let player = nameTxtField.text, player.isEmpty {
            warningLbl.isHidden = false
        }
        else
        {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "CricketViewController") as! UIViewController
            UserDefaults.standard.set(playerName, forKey: "nameKey")
            self.navigationController?.pushViewController(vc, animated: true)
        }
    
    }
    
    @IBAction func showHistoryClicked(_ sender: Any) {
        if (firstPlayer) {
            numberOfPlayers = 0
            let alert = UIAlertController(title: "Hey there!", message: "You haven't played any game yet!", preferredStyle: .alert)
            let okayAction = UIAlertAction(title: "Okay", style: .default) {
                (action) in print(action)
            }
            alert.addAction(okayAction)
            present(alert, animated: true, completion: nil)
        }
        else {
            numberOfPlayers += 1
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "HistoryViewController") as! HistoryViewController
            vc.numberOfGamesPlayed = numberOfPlayers
            self.navigationController?.pushViewController(vc, animated: true)
        }
       
    }
    

}

