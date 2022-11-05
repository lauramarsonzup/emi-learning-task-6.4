//
//  ViewController.swift
//  LearningTask-6.4
//
//  Created by rafael.rollo on 12/04/2022.
//

import UIKit

class PokedexViewController: UITableViewController {

    var pokemonStore: PokemonStore?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableHeaderView = HeaderView.com(titulo: "Pokédex")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonStore?.todos.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonViewCell", for: indexPath) as? PokemonTableViewCell else {
            fatalError("Não foi possível carregar as células da tabela")
        }
        
        let pokemon = pokemonStore?.todos[indexPath.row]
        
        cell.setup(for: pokemon)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
