//
//  modo2.swift
//  aula4
//
//  Created by Turma02-26 on 11/06/24.
//

import SwiftUI

struct modo2: View {
    
    @State private var name:String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.hackablue)
                
                Text("Modo 2")
                    .font(.title)
                    .bold()
                Rectangle()
                    .font(.title)
                    .frame(width: 300, height: 250)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.pink)
                    .cornerRadius(5)
                    .padding()
                
                VStack{
                    
                    Text("Bem vindo, \(name)!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    TextField("Seu nome aqui",text: $name)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink("Acessar Tela",destination: telaNova(name:name))
                        .frame(width: 125,height: 35)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                    
                }
                
            }
        }
    }
}

#Preview {
    modo2()
}
