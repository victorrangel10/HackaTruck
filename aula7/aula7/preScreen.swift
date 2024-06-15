//
//  preScreen.swift
//  aula7
//
//  Created by Turma02-26 on 14/06/24.
//

import SwiftUI

struct preScreen: View {
    @State var ano: String = "2024"
    var body: some View {
        NavigationStack{
            VStack{
                Text("Insira o ano:")
                TextField("insira o ano aqui",text: $ano)
                    .multilineTextAlignment(.center)
                
                NavigationLink("Ver Feriados",destination: ContentView(ano: ano))
                    .frame(width:120 ,height: 50)
                    .background(Color.green)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}

#Preview {
    preScreen()
}
