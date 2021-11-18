

import UIKit
import CloudKit

//15. my enums
enum RPS{
    
    case rock
    case paper
    case scissors
    
}


//16. reference is my class
//13. this is a class


class PlayingView: UIViewController,UITabBarControllerDelegate {

    
    @IBOutlet weak var compImage: UIImageView!
    @IBOutlet weak var chooseSegment: UISegmentedControl!
    @IBOutlet weak var winOrLose: UILabel!
    @IBOutlet weak var yourImage: UIImageView!
    var comp = RPS.scissors
    var user = RPS.scissors
    var compTypeImage: UIImage!
    var textText = "hmm"
    static var games: [Games] = []
    var myText = "yas"
    var tabb: UITabBarController?
    var usertext = "huh"
    var comptext = "huh"
    @IBOutlet weak var goOutlet: UIButton!
    
    //1. above are variables
    //1 and 7, games is a constant and array

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goOutlet.layer.cornerRadius = 7
        
    }
        
        



    @IBAction func goButton(_ sender: UIButton) {
        compImage.image = compGo()
        winOrLose.text = whoWins()
        
        switch user{
        case .rock:
        usertext = "rock"
        case .paper:
        usertext = "paper"
        case .scissors:
        usertext = "scissors"
        }
        
        switch comp{
        case .rock:
        comptext = "rock"
        case .paper:
        comptext = "paper"
        case .scissors:
        comptext = "scissors"
        }
    
    PlayingView.games.append(Games.init(winOrlose: myText, userPlay: usertext, compPlay: comptext))
    
    }
    
 
    
    
    
    
    @IBAction func segmentOutlet(_ sender: UISegmentedControl) {
       var get = Int(sender.selectedSegmentIndex)
       
        if get == 0{
            user = RPS.rock
        }
        else if get == 1{ //2. operator, ==
            user = RPS.paper
        }
        else if get == 2{
            user = RPS.scissors
        }
        
        //3. above is if/else
        
        //6. below is switch statement
        switch user {
        case .rock:
        yourImage.image = UIImage(named: "rock.png")
        case .paper:
        yourImage.image = UIImage(named: "paper.png")
        case .scissors:
        yourImage.image = UIImage(named: "scissors.png")
        }
    }
    
    
    
    
    
    func compGo()-> UIImage{
        
        var get = Int.random(in: 0..<3)
        if get == 0{
            comp = RPS.rock
        }
        else if get == 1{
            comp = RPS.paper
        }
        if get == 2{
            comp = RPS.scissors
        }
    
        if comp == RPS.rock{
        compTypeImage = UIImage(named: "rock.png")
        }
        else if comp == RPS.paper {
        compTypeImage = UIImage(named: "paper.png")
        }
        else if comp == RPS.scissors{
        compTypeImage = UIImage(named: "scissors.png")
        }
        else{
        print("purr")
        }
        return compTypeImage
    }
        
      
    //10. functions
    func whoWins()-> String{
        if comp == user{
         textText = "you tie"
         myText = "tie"
        }
        
        else if user == RPS.rock && comp == RPS.paper{
        textText = "you lose"
        myText = "loss"

        }
        
        else if user == RPS.paper && comp == RPS.rock{
        textText = "you win"
        myText = "win"
        }
    
        else if user == RPS.paper && comp == RPS.scissors{
        textText = "you lose"
        myText = "loss"

        }
        
        else if user == RPS.scissors && comp == RPS.paper{
        textText = "you win"
        myText = "win"
        }
        
        else if user == RPS.scissors && comp == RPS.rock{
        textText = "you lose"
        myText = "loss"
        }
        
        else if user == RPS.rock && comp == RPS.scissors{
        textText = "you win"
        myText = "win"
        }
        
        else{
        textText = "whoops"
        }
        
        return textText
        
    }
    
    

    
    
    
    
    
    
}


