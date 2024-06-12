//
//  modo1.swift
//  aula4
//
//  Created by Turma02-26 on 11/06/24.
//

import SwiftUI

struct modo1: View {
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(.hackablue)
            VStack{
                Text("Modo 1")
                    .font(.title)
                    .bold()
                Spacer()
                Button("Nome: Thiago \nSobrenome: Pereira"){
                    
                }
                    .frame(width: 200, height: 75)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                Spacer()
            }
        }
    }
}

#Preview {
    modo1()
}
