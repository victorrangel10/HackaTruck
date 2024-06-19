//
//  ViewModel.swift
//  aula8
//
//  Created by Turma02-26 on 19/06/24.
//

import Foundation


class ViewModel : ObservableObject{
    
    @Published var  quitandas  : [Quitanda] = []
    
    func fetchFeriado(){
        guard let url = URL(string: "http://127.0.0.1:1880/visualize") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            
            guard let info = data, error == nil else{ // verifica se entrou a informacao e se nao tem erro
                return
            }
            
            do {
                let jsonDecodificado = try JSONDecoder().decode([Quitanda].self, from: info)
            
                DispatchQueue.main.async {
                    self?.quitandas = jsonDecodificado
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    
}
