//
//  QuitandaView.swift
//  aula8
//
//  Created by Turma02-26 on 19/06/24.
//

import SwiftUI



struct QuitandaView: View {
    @State var  quitanda : Quitanda
    var body: some View {
        VStack{
            Text(quitanda.nomeQuitanda!)
                .font(.title)
                .bold()
            Image(.quitandaaa)
                .resizable()
                .frame(width: 400,height: 400)
            Text(quitanda.enderecoQuitanda!)
                .font(.title)
            ScrollView(.horizontal){
                HStack{
                ForEach(quitanda.frutasDisponiveis, id: \.self){ f in
                    VStack{
                        Text(f!.nome!)
                            .font(.title)
                        ForEach(f!.nutrientes,id: \.self){ n in
                            Text(n!)
                        }
                    }
                }
                .padding()
            }
            }
        }
    }
}

#Preview {
    QuitandaView(quitanda: Quitanda(nomeQuitanda: "Xique Xique", enderecoQuitanda: "Rua oswaldo ramos", frutasDisponiveis: [Fruta(nome: "lucas", foto: "", nutrientes: ["carbo","protein"])]))
}
