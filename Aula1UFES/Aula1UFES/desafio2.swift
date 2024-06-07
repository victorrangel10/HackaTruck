//
//  desafio2.swift
//  Aula1UFES
//
//  Created by Turma02-26 on 06/06/24.
//

import SwiftUI

struct desafio2: View {
    var body: some View {
        HStack{
            Image(.raony)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(100)
                .padding(.horizontal)
            Spacer()
            VStack{
                Text("HackaTruck").foregroundStyle(.red)
              
                Text("77 Universidades").foregroundStyle(.blue)
                
                Text("5 regioes do Brasil").foregroundStyle(.yellow)
                
            }
            .padding(.horizontal)
        }
        }
}

#Preview {
    desafio2()
}
