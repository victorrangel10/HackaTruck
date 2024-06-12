//
//  desafio2.swift
//  aula4
//
//  Created by Turma02-26 on 11/06/24.
//

import SwiftUI

struct desafio2: View {
    
    @State var isShowing:Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.hackablue)
                VStack{
                    Image(.logo)
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    
                    NavigationLink(destination: modo1()){
                        Text("Modo 1")
                    }
                    .frame(width: 200, height: 75)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    
                    NavigationLink(destination: modo2()){
                        Text("Modo 2")
                    }
                    .frame(width: 200, height: 75)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    
                    
                    Button("Modo 3"){
                        isShowing.toggle()
                    }
                    .frame(width: 200, height: 75)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    
                    .sheet(isPresented:$isShowing ){
                        tela2()
                    }
                    
                    Spacer()
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    desafio2()
}
