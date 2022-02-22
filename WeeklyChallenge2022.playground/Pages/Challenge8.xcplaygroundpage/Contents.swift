//: [Previous](@previous)

import Foundation

/*
 * Reto #8
 * DECIMAL A BINARIO
 * Fecha publicación enunciado: 18/02/22
 * Fecha publicación resolución: 02/03/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa se encargue de transformar un número decimal a binario sin utilizar funciones propias del lenguaje que lo hagan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func decimalToBinary(num: Int) -> String {
    var binary: [String] = []
    var number = num
    while number != 0 {
        let (q, r) = number.quotientAndRemainder(dividingBy: 2)
        binary.append("\(r)")
        number = q
    }
    
    return binary.reversed().joined(separator: "")
}

print(decimalToBinary(num: 256))


//: [Next](@next)
