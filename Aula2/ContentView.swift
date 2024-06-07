//
//  ContentView.swift
//  Aula2
//
//  Created by Turma02-26 on 07/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var isshowing = false
    
    
    var body: some View {
        ZStack{
            
            
                Image(.capturaDeTela20230118Às225948)//fundo
                    .resizable()
                    .opacity(0.2)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                
                VStack{ // layer 2
                    
                    VStack{
                        Text("Bem vindo, \(name)!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        TextField("Enter your name", text: $name)
                            .multilineTextAlignment(.center)
                    }
                   Spacer()
                    
                    VStack{
                        Image(.logo)
                            .resizable()
                            .frame(width: 270,height: 100)
                        Image(.truck)
                            .resizable()
                            .frame(width: 220,height: 100)
                    }
                  
                    Spacer()
                    VStack{
                        Button("Entrar") {
                            isshowing = true
                        }
                        .alert(isPresented: $isshowing){
                            Alert(title: Text("ALERTA!"),message: Text("Você irá iniciar o desafio da aula agora"),dismissButton: .default(Text("Vamos lá ")))
                            
                        }
                    }
                }
                
               
            
        }
    }
}

#Preview {
    ContentView()
}
