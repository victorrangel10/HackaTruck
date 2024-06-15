//
//  telaInfo.swift
//  aula7
//
//  Created by Turma02-26 on 14/06/24.
//

import SwiftUI
struct telaInfo: View {
    var data : String
    var nome : String
    var tipo : String
    var body: some View {
        VStack{
            Text(nome)
            Text(data)
            Text(tipo)
        }
    }
}

#Preview {
    telaInfo(data: "10/10", nome: "carlos eduardo",tipo: "Nacional")
}
