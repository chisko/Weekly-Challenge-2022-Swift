//: [Previous](@previous)

/*
 * Reto #4
 * ÁREA DE UN POLÍGONO
 * Fecha publicación enunciado: 24/01/22
 * Fecha publicación resolución: 31/01/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

import Foundation

enum Polygon {
    case Square(side: Double)
    case Rectangle(base: Double, height: Double)
    case Triangle(base: Double, height: Double)
    
    func getArea() -> Double {
        switch self {
        case .Square(side: let side):
            return side * side
        case .Rectangle(base: let base, height: let height):
            return base * height
        case .Triangle(base: let base, height: let height):
            return (base * height) / 2
        }
    }
}

print(Polygon.Square(side: 4).getArea())
print(Polygon.Rectangle(base: 4, height: 8).getArea())
print(Polygon.Triangle(base: 4, height: 8).getArea())

//: [Next](@next)
