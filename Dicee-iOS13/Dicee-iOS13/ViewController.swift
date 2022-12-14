

import UIKit

class ViewController: UIViewController {

    //IBOutlet conecta interface com o código - fornece uma referencia especfica a determinada coisa
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    //acoes que acontecem apos apertar o botao
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //simplificacao do codigo com o uso let - refatoracao
        let diceArray = [UIImage (named: "DiceOne"),
                         UIImage (named: "DiceTwo"),
                         UIImage (named: "DiceThree"),
                         UIImage (named: "DiceFour"),
                         UIImage (named: "DiceFive"),
                         UIImage (named: "DiceSix")]
        
        //randomizacao dos valores dos dados, sem limite de possibilidades
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }
    
}

