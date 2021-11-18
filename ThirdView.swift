import UIKit




class ThirdView: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    //20. inheritance
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
 
    var x = 0
    var w = 0
    var l = 0
    var t = 0
    var countt = 0
    
    @IBOutlet weak var ties: UILabel!
    @IBOutlet weak var game: UILabel!
    @IBOutlet weak var wins: UILabel!
    @IBOutlet weak var losses: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        tableViewOutlet.reloadData()
        countt = 0
        
        //4. while loop
        while x < PlayingView.games.count {
            
            if
                PlayingView.games[x].winOrlose == "win"{
                
                w = w + 1
                x = x + 1
            }
            
           else if PlayingView.games[x].winOrlose == "loss" {
                
                l = l + 1
                x = x + 1
            }
            
            else if PlayingView.games[x].winOrlose == "tie" {
                
                t = t + 1
                x = x + 1
            }
        }
        
        
        wins.text = String(w)
        losses.text = String(l)
        ties.text = String(t)
        
        //5. for loop
        for amount in PlayingView.games{
            countt = countt + 1
        }
        
        
        game.text = String(countt)
        
    }
    
    
    
    
    
    
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print(PlayingView.games.count)
        return PlayingView.games.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CrazyCell

        
        
        
        if PlayingView.games[indexPath.row].winOrlose == "win"{
            cell.winOrLossOutlet?.textColor = UIColor.green
        }
        else if PlayingView.games[indexPath.row].winOrlose == "loss"{
            cell.winOrLossOutlet?.textColor = UIColor.red
        }
       else if PlayingView.games[indexPath.row].winOrlose == "tie"{
            cell.winOrLossOutlet?.textColor = UIColor.yellow
        }
        else{
            print("hi")
        }
        
        
        //12. optionals
        cell.winOrLossOutlet?.text = PlayingView.games[indexPath.row].winOrlose
        cell.compOutlet?.text = PlayingView.games[indexPath.row].compPlay
        cell.userOutlet?.text = PlayingView.games[indexPath.row].userPlay

        

        return cell
        
        
    }
    
    
    
    
   
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
}
