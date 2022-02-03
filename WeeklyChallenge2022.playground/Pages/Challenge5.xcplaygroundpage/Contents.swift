//: [Previous](@previous)

/*
 * Reto #5
 * ASPECT RATIO DE UNA IMAGEN
 * Fecha publicación enunciado: 01/02/22
 * Fecha publicación resolución: 07/02/22
 * Dificultad: DIFÍCIL
 *
 * Enunciado: Crea un programa que se encargue de calcular y el aspect ratio de una imagen a partir de una url.
 * - Url de ejemplo: https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png
 * - Por ratio hacemos referencia por ejemplo a los "16:9" de una imagen de 1920*1080px.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

import Foundation
import UIKit

func euclidsAlgorithm(_ width: Double, _ height: Double) -> Int {
    var a = width > height ? Int(width) : Int(height)
    var b = width > height ? Int(height) : Int(width)
    
    while (a % b != 0) {
        let r = a % b
        a = b
        b = r
    }
    
    return b
}
//https://via.placeholder.com/1920×1080
//https://via.placeholder.com/1280x720
//https://via.placeholder.com/1080x720
let url = URL(string: "https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png")!

let dataTask = URLSession.shared.dataTask(with: url) { (data, _, _) in
    if let data = data {
        DispatchQueue.main.async {
            //print(data)
            if let image = UIImage(data: data) {
                print("w: \(image.size.width), h: \(image.size.height)")
                let gcf = euclidsAlgorithm(image.size.width, image.size.height)
                let ratio = "\(Int(image.size.width) / gcf):\(Int(image.size.height) / gcf)"
                print("Img Ratio: \(ratio)")
            }
        }
    }
}

// Start Data Task
dataTask.resume()

//: [Next](@next)
