//
//  WorldCupViewController.swift
//  CampeoesDaCopa
//
//  Created by Luana Martinez de La Flor on 21/09/21.
//

import UIKit

class WorldCupViewController: UIViewController {

    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbSocore: UILabel!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbvice: UILabel!
    @IBOutlet weak var tableView: UITableView!  // tipo recivluview 
    
    var worldcup: WorldCup!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "WorldCup \(worldcup.year)"
        ivWinner.image = UIImage (named: worldcup.winner)
        ivVice.image = UIImage(named: worldcup.vice)
        lbSocore.text = "\(worldcup.winnerScore) X \(worldcup.viceScore)"
        lbWinner.text = worldcup.winner
        lbvice.text = worldcup.vice

        // Do any additional setup after loading the view.
    }
}
    

    extension WorldCupViewController: UITableViewDataSource{ // datasource alimentar com os dados
       
        func numberOfSections(in tableView: UITableView) -> Int {
            return worldcup.matches.count // conta o numero de match do json
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            let games = worldcup.matches[section].games // retorna quanto games ha nessa sesao do json
            return games.count
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
            
            let match = worldcup.matches[indexPath.section] //recupera a secao de matcha
            let game = match.games[indexPath.row] // recure os dado dentro do game que por sua vez fic a dentro do metch
            
            
            cell.prepara(whit: game)
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            
            let match = worldcup.matches[section]
            return match.stage
        }
        
    }

   
    extension WorldCupViewController: UITableViewDelegate{
    
    }


