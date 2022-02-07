//: [Previous](@previous)

import Foundation

/*
 * Reto #6
 * INVIRTIENDO CADENAS
 * Fecha publicación enunciado: 07/02/22
 * Fecha publicación resolución: 14/02/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa que invierta el orden de una cadena de texto sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func invierteCadena(_ str: String) -> String {
    var arrStr: [String] = []
    for chr in str {
        arrStr.append(String(chr))
    }
    
    var reversedStr = ""
    for index in stride(from: arrStr.count - 1, through: 0, by: -1) {
        reversedStr += arrStr[index]
    }
    
    return reversedStr
}

print(invierteCadena("Hola mundo"))

//: [Next](@next)
