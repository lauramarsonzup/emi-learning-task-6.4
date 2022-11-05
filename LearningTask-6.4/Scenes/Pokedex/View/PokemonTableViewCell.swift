//
//  PokemonTableViewCell.swift
//  LearningTask-6.4
//
//  Created by Laura Pinheiro Marson on 05/11/22.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pokemonTypeView: TipoDePokemonView!
    @IBOutlet weak var evolutionNameLabel: UILabel!
    
    func setup(for pokemon: Pokemon?) {
        guard let pokemon = pokemon else { return }
        
        pokemonImage.image = .customImage(for: pokemon.referencia)
        nameLabel.text = pokemon.nome
        pokemonTypeView.set(pokemon.tipo)
        
        guard let evolucoes = pokemon.evolucoes, !evolucoes.isEmpty else {
            evolutionNameLabel.text = "N/A"
            return
        }
        
        let evolutionNames = evolucoes.map({ $0.nome })
            .joined(separator: ", ")
        
        evolutionNameLabel.text = evolutionNames
    }
}
