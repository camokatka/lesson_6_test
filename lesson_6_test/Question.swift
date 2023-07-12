
import Foundation

class Question {
    var text: String
    var cost: Int
    var answers: [String]
    var bingo: Int
    
    init(text: String, cost: Int, answers: [String], bingo: Int) {
        self.text = text
        self.cost = cost
        self.answers = answers
        self.bingo = bingo
    
    }
    

}
