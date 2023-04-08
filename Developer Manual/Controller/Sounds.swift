/* Sounds.swift --> Developer Manual. Created by Miguel Torres on 08/04/23. */

import UIKit
import AVFoundation // Para el manejo de audio y video

class Sounds: UIViewController {
    
    // Necesitamos una variable que nos permita acceder a los métodos de AVFoundation
    var player: AVAudioPlayer!
    
    // Etiqueta para mostrar un mensaje al presionar el botón
    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        message.text = ""
    }
    
    
    // Cuando presionemos cualquier botón de la interfaz, se va a activar esta función y los vamos a diferenciar con su título.
    @IBAction func pressButton(_ sender: UIButton) {
        // Usamos una función para reproducir el sonido cada vez que se presione un botón
        playSound(name: sender.currentTitle!)
        
        // Estructura selectiva para el mensaje
        switch sender.currentTitle! {
        case "A":
            message.text = "Correct!"
        case "B":
            message.text = "Wrong!"
        case "C":
            message.text = "Jump jump!"
        case "D":
            message.text = "You got 1 life!"
        case "E":
            message.text = "I need a weapon"
        default:
            message.text = ""
        }
    }
    
    // Función para reproducir un archivo de audio.
    func playSound(name: String) {
        // Ubicación del archivo de audio
        let url = Bundle.main.url(forResource: name, withExtension: "mp3")
        // Cargamos el archivo de audio que se encuentra en la ubicación anterior
        player = try! AVAudioPlayer(contentsOf: url!)
        // Reproducimos el archivo cargado
        player.play()
    }
    
}


