
import Foundation

class Database {
    var base: [Question] = []
    
    func play (questions: [Question], player: Player) {
        var sum = 0
        var count = 1
        for question in questions {
            print("Вопрос №\(count), цена вопроса \(question.cost):")
            print(question.text)
            var ansCount = 1
            for answer in question.answers {
                print("\(ansCount). \(answer)")
                ansCount += 1
            }
            
            var playerAnswer = ""
            while true {
                print("Ваш ответ: ", terminator: "")
                playerAnswer = readLine()!
                if Int(playerAnswer)! > 0 && Int(playerAnswer)! < 5 {
                    break
                } else {
                    print("Введите значения от 1 до 4!")
                }
            }
            if Int(playerAnswer) == question.bingo {
                sum += question.cost
                if count < 5 {
                    print("Правильно! Ваш текущий выигрыш \(sum). Идем дальше!")
                } else {
                    print("Поздравляем! Вы прошли игру! \(player.name) \(player.surname) ваш выигрыш составил \(sum)!")
                }
                count += 1
                continue
            }
            else {
                print("\(player.name), к сожалению, вы ошиблись! Игра окончена!")
                break
                }
            }
        
        
    }
}
