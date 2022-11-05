//
//  Pokemon.swift
//  LearningTask-6.4
//
//  Created by Laura Pinheiro Marson on 05/11/22.
//

import Foundation

struct Pokemon {
    let referencia: String
    let nome: String
    let tipo: [Tipo]
    var evolucoes: [Pokemon]?
    
    init(referencia: String, nome: String, tipo: [Tipo], evolucoes: [Pokemon]? = []) {
        self.referencia = referencia
        self.nome = nome
        self.tipo = tipo
        self.evolucoes = evolucoes
    }
}

enum Tipo: String {
    case grama = "Grama"
    case fogo = "Fogo"
    case agua = "Água"
    case eletrico = "Elétrico"
    case venenoso = "Venenoso"
    case voador = "Voador"
    case normal = "Normal"
    case gelo = "Gelo"
    case psiquico = "Psíquico"
}
