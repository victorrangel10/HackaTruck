//
//  telaNova.swift
//  aula4
//
//  Created by Turma02-26 on 11/06/24.
//

import SwiftUI

struct telaNova: View {
    
    var name: String
    
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.hackablue)
                
                Rectangle()
                    .font(.title)
                    .frame(width: 160, height: 80)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.pink)
                    .cornerRadius(5)
                    .padding()
                Text("Volte,\n\(name)!!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            }
            
        }
    }
}

#Preview {
    telaNova(name: "preview ")
}
