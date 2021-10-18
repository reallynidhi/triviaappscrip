//
//  SummaryViewController.swift
//  Trivia App
//
//  Created by Nidhi Soni on 17/10/21.
//

import UIKit

class SummaryViewController: UIViewController {
    
    
    @IBOutlet weak var nameOfThePlayer: UILabel!
    @IBOutlet weak var crickterAnswer: UILabel!
    @IBOutlet weak var flagAnswers: UILabel!
    
    var numberOfGames = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfThePlayer.text = UserDefaults.standard.string(forKey: "nameKey")
        crickterAnswer.text = UserDefaults.standard.string(forKey: "cricketKey")
        flagAnswers.text = UserDefaults.standard.string(forKey: "flagKey")
    }
    
    @IBAction func finishClicked(_ sender: Any) {
        // go back to the start
        numberOfGames += 1
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.firstPlayer = false
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func checkHistoryClicked(_ sender: Any) {
        numberOfGames = numberOfGames + 1
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HistoryViewController") as! HistoryViewController
        vc.numberOfGamesPlayed = numberOfGames
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    
    
    
    
}
