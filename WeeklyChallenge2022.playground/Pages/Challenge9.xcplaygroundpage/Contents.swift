//: [Previous](@previous)

import Foundation

/*
 * Reto #9
 * CÓDIGO MORSE
 * Fecha publicación enunciado: 02/03/22
 * Fecha publicación resolución: 07/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.
 * - Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
 * - En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
 * - El alfabeto morse soportado será el mostrado en https://es.wikipedia.org/wiki/Código_morse.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

var morseDict: [String: String] = [
    "A": "· —",
    "B": "— · · ·",
    "C": "— · — ·",
    "CH": "— — — —",
    "D": "— · ·",
    "E": "·",
    "F": "· · — ·",
    "G": "— — ·",
    "H": "· · · ·",
    "I": "· ·",
    "J": "· — — —",
    "K": "— · —",
    "L": "· — · ·",
    "M": "— —",
    "N": "— ·",
    "Ñ": "— — · — —",
    "O": "— — —",
    "P": "· — — ·",
    "Q": "— — · —",
    "R": "· — ·",
    "S": "· · ·",
    "T": "—",
    "U": "· · —",
    "V": "· · · —",
    "W": "· — —",
    "X": "— · · —",
    "Y": "— · — —",
    "Z": "— — · ·",
    "0": "— — — — —",
    "1": "· — — — —",
    "2": "· · — — —",
    "3": "· · · — —",
    "4": "· · · · —",
    "5": "· · · · ·",
    "6": "— · · · ·",
    "7": "— — · · ·",
    "8": "— — — · ·",
    "9": "— — — — ·",
    ".": "· — · — · —",
    ",": "— — · · — —",
    "?": "· · — — · ·",
    "\"": "· — · · — ·",
    "/": "— · · — ·"
]

func isMorseCode(_ str: String) -> Bool {
    let resultStr = str.replacingOccurrences(of: "—", with: "").replacingOccurrences(of: "·", with: "").trimmingCharacters(in: .whitespacesAndNewlines)
    return resultStr.isEmpty
}

func toMorse(_ str: String) -> [String] {
    var result: [String] = []
    for char in str.uppercased() {
        if let chr = morseDict[String(char)] {
            result.append(chr.replacingOccurrences(of: " ", with: ""))
            result.append(" ")
        } else if char == " " {
            result.append("  ")
        }
    }
    return result
}

func fromMorse(_ str: String) -> [String] {
    var result: [String] = []
    let chars = str.replacingOccurrences(of: "  ", with: " *").split(separator: " ")
    for char in chars {
        if char == "*" {
            result.append(" ")
        } else if let index = morseDict.firstIndex(where: { $0.value.replacingOccurrences(of: " ", with: "") == char }) {
            result.append(morseDict[index].key)
        }
    }
    return result
}

func translate(_ str: String) -> String {
    var result: [String] = []
    
    if isMorseCode(str) {
        result = fromMorse(str)
    } else {
        result = toMorse(str)
    }
    
    return result.joined(separator: "")
}

print(translate("hola, francisco \"chisko\" ruiz"))
print(translate("···· ——— ·—·· ·—   ··—· ·—· ·— —· —·—· ·· ··· —·—· ———"))
print(translate("···· ——— ·—·· ·— ——··——   ··—· ·—· ·— —· —·—· ·· ··· —·—· ———   ·—··—· —·—· ···· ·· ··· —·— ——— ·—··—·   ·—· ··— ·· ——··"))

//: [Next](@next)
