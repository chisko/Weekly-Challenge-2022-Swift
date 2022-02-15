//: [Previous](@previous)

import Foundation

/*
 * Reto #7
 * CONTANDO PALABRAS
 * Fecha publicación enunciado: 14/02/22
 * Fecha publicación resolución: 21/02/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que cuente cuantas veces se repite cada palabra y que muestre el recuento final de todas ellas.
 * - Los signos de puntuación no forman parte de la palabra.
 * - Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
 * - No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func limpiar(texto: String) -> String {
    var strLimpio = texto
    let signosPuntuacion = [".", ",", ":", ";"]
    
    for signo in signosPuntuacion {
        strLimpio.replacingOccurrences(of: signo, with: "")
    }
    
    return strLimpio
}

func contandoPalabras(texto: String) {
    var textoLimpio = limpiar(texto: texto.lowercased())
    var palabras: [String:Int] = [:]
    for palabra in textoLimpio.split(separator: " ") {
        let strPalabra = String(palabra)
        if palabras.keys.contains(strPalabra) {
            if let cantidadActual = palabras[strPalabra] {
                palabras.updateValue(cantidadActual + 1, forKey: strPalabra)
            }
        } else {
            palabras.updateValue(1, forKey: strPalabra)
        }
    }
    print(palabras)
}

contandoPalabras(texto: "Crea un programa que cuente cuantas veces se repite cada palabra y que muestre el recuento final de todas ellas.")

//: [Next](@next)
