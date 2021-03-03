//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Rafael Hartmann on 03/03/21.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers:Int = 0
    var totalAnswers:Int = 0
    
    @IBAction func close(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        
        lbWrong.text = "Perguntas erradas \(totalAnswers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers * 100 / totalAnswers
        
        lbScore.text = "\(score)%"
        
   
    }
    


}
