//
//  HistoryTableViewCell.swift
//  Trivia App
//
//  Created by Nidhi Soni on 18/10/21.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var dataTimeLbl: UILabel!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var cricketAnswer: UILabel!
    @IBOutlet weak var flagAnswer: UILabel!
    @IBOutlet weak var gameNumber: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    
    var backToMainPage = ViewController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func backClicked(_ sender: Any) {
        backToMainPage.firstPlayer = false
    }
    
    
}
