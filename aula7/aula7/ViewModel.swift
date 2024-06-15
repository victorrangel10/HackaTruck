//
//  ViewModel.swift
//  aula7
//
//  Created by Turma02-26 on 14/06/24.
//

import Foundation


class ViewModel : ObservableObject{
    
    @Published var  feriados  : [feriado] = []
    
    func fetchFeriado(ano : String){
        guard let url = URL(string: "https://brasilapi.com.br/api/feriados/v1/\(ano)") else{
            return
        }
        print("https://brasilapi.com.br/api/feriados/v1/\(ano)")
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _ , error in
            
            guard let data = data, error == nil else{ // verifica se entrou a informacao e se nao tem erro
                return
            }
            
            do {
                let jsonDecodificado = try JSONDecoder().decode([feriado].self, from: data)
                
                DispatchQueue.main.async {
                    self?.feriados = jsonDecodificado
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    
}




