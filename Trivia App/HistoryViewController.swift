//
//  HistoryViewController.swift
//  Trivia App
//
//  Created by Nidhi Soni on 18/10/21.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var numberOfGamesPlayed = 1
    var dateTimeString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentDateTime = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        dateTimeString = formatter.string(from: currentDateTime)
        
    }
    
    
    @IBAction func backClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.firstPlayer = false
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK:- Table View Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return numberOfGamesPlayed
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HistoryTableViewCell
        cell.dataTimeLbl.text = dateTimeString
        cell.gameNumber.text = "\(numberOfGamesPlayed) :"
        cell.playerName.text = UserDefaults.standard.string(forKey: "nameKey")
        cell.cricketAnswer.text = UserDefaults.standard.string(forKey: "cricketKey")
        cell.flagAnswer.text = UserDefaults.standard.string(forKey: "flagKey")
        return cell
    }
    


}
