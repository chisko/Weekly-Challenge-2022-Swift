//: [Previous](@previous)

import Foundation

/*
 * Reto #12
 * ¿ES UN PALÍNDROMO?
 * Fecha publicación enunciado: 21/03/22
 * Fecha publicación resolución: 28/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba un texto y retorne verdadero o falso (Boolean) según sean o no palíndromos.
 * Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.
 * NO se tienen en cuenta los espacios, signos de puntuación y tildes.
 * Ejemplo: Ana lleva al oso la avellana.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func palindrome(text: String) -> Bool {
    let acentos = [
        "á": "a",
        "é": "e",
        "í": "i",
        "ó": "o",
        "ú": "u",
        " ": "",
        ",": "",
        ":": "",
        ".": "",
        "\n": ""
    ]
    
    var str = text.lowercased()
    for (key, val) in acentos {
        str = str.replacingOccurrences(of: key, with: val)
    }
    
    //print(str)
    
    return str == String(str.reversed())
}

print(palindrome(text: "Francisco Ruiz"))
print(palindrome(text: "Somos o no somos"))
print(palindrome(text: "Isaac no ronca así"))
print(palindrome(text: "Sé verlas al revés"))
print(palindrome(text: "Amó la paloma"))
print(palindrome(text: "Anita lava la tina"))
print(palindrome(text: "Luz azul"))
print(palindrome(text: "Yo hago yoga hoy"))
print(palindrome(text: "Ana lava lana"))
print(palindrome(text: """
                 Amor azul
                 Ramera, de todo te di.
                 Mariposa colosal, sí,
                 yo de todo te di.
                 Poda la rosa, Venus.
                 El átomo como tal
                 es un evasor alado.
                 Pide, todo te doy: isla,
                 sol, ocaso, pirámide.
                 Todo te daré: mar, luz, aroma.
"""))

//: [Next](@next)
