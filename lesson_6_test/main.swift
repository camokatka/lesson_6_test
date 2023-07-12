
import Foundation

var database = Database()

let answers1 = ["Алексей", "Александр", "Антон", "Андрей"]
let question1 = Question(text: "Имя поэта Пушкина", cost: 100, answers: answers1, bingo: 2)

let answers2 = ["400км", "4000км", "40000км", "400000км"]
let question2 = Question(text: "Какова длина экватора?", cost: 200, answers: answers2, bingo: 3)

let answers3 = ["Нос", "Вий", "Мертвые души", "Обломов"]
let question3 = Question(text: "Какое произведение написал не Гоголь?", cost: 400, answers: answers3, bingo: 4)

let answers4 = ["Сидней", "Канберра", "Аделаида", "Мельбурн"]
let question4 = Question(text: "Столица Австралии", cost: 1000, answers: answers4, bingo: 2)

let answers5 = ["Архимед", "Птолемей", "Аристотель", "Эпикур"]
let question5 = Question(text: "Назовите ученика Платона", cost: 2000, answers: answers5, bingo: 3)

database.base = [question1, question2, question3, question4, question5]


print("Здравствуйте! Введите ваше имя: ", terminator: "")
let name = readLine()!
print("Здорово! А теперь фамилию: ", terminator: "")
let surname = readLine()!

var player = Player(name: name, surname: surname)

database.play(questions: database.base, player: player)
