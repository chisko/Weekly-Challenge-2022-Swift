//: [Previous](@previous)

import Foundation

/*
 * Reto #17
 * LA CARRERA DE OBSTÁCULOS
 * Fecha publicación enunciado: 25/04/22
 * Fecha publicación resolución: 02/05/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea una función que evalúe si un/a atleta ha superado correctamente una
 * carrera de obstáculos.
 * - La función recibirá dos parámetros:
 *      - Un array que sólo puede contener String con las palabras "run" o "jump"
 *      - Un String que represente la pista y sólo puede contener "_" (suelo) o "|" (valla)
 * - La función imprimirá cómo ha finalizado la carrera:
 *      - Si el/a atleta hace "run" en "_" (suelo) y "jump" en "|" (valla) será correcto y no
 *        variará el símbolo de esa parte de la pista.
 *      - Si hace "jump" en "_" (suelo), se variará la pista por "x".
 *      - Si hace "run" en "|" (valla), se variará la pista por "/".
 * - La función retornará un Boolean que indique si ha superado la carrera.
 * Para ello tiene que realizar la opción correcta en cada tramo de la pista.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func obstacleRace(track: String, athlete: [String]) -> Bool {
    guard track.count == athlete.count else {
        print("La longitud de la pista no corresponde a la cantidad de acciones del atleta")
        return false
    }
    
    var trackResult = ""
    var raceOk = true
    for (idx, segment) in track.enumerated() {
        //print(idx, segment)
        if (segment == "_" && athlete[idx] == "run") || (segment == "|" && athlete[idx] == "jump") {
            trackResult = "\(trackResult)\(segment)"
        } else if segment == "_" && athlete[idx] != "run" {
            trackResult = "\(trackResult)x"
            raceOk = false
        } else if segment == "|" && athlete[idx] != "jump" {
            trackResult = "\(trackResult)/"
            raceOk = false
        }
    }
    
    print(trackResult)
    
    return raceOk
}

let track = "___|_|__|___|____|_____|"
let athlete = [
    "run","run","run","jump",
    "run","jump",
    "run","run","jump",
    "run","run","run","jump",
    "run","run","run","run","jump",
    "run","run","run","run","run","jump"
]

print(obstacleRace(track: track, athlete: athlete))

//: [Next](@next)
