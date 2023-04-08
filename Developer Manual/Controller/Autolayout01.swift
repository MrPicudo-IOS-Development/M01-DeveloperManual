/* Autolayout.swift --> Developer Manual. Created by Miguel Torres on 07/04/23. */

import UIKit

class Autolayout01: UIViewController {

    // Conexión de la Image View al controlador.
    @IBOutlet weak var hackerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hackerImage.image = images[0]
    }
    
    // Hacemos un arreglo de imágenes para elegir una aleatoriamente.
    let images = [#imageLiteral(resourceName: "Hacker01"), #imageLiteral(resourceName: "Hacker03"), #imageLiteral(resourceName: "Hacker02")]
    
    // Seleccionamos una imagen aleatoria del arreglo al presionar el botón.
    @IBAction func GoForIt(_ sender: UIButton) {
        hackerImage.image = images[Int.random(in: 0..<images.count)]
    }
    
}
