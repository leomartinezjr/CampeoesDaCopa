//
//  GamesTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Luana Martinez de La Flor on 23/09/21.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    @IBOutlet weak var ivHome: UIImageView!
    @IBOutlet weak var ivAway: UIImageView!
    @IBOutlet weak var lbHome: UILabel!
    @IBOutlet weak var lbAway: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func prepara (whit game: Game){
        
        ivHome.image = UIImage(named: game.home)
        ivAway.image = UIImage(named: game.away)
        lbHome.text = game.home
        lbAway.text = game.away
        lbScore.text = game.score
        
        
    }
    
    
}
