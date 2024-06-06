//
//  ContentView.swift
//  Aula1UFES
//
//  Created by Turma02-26 on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack
            {
                Rectangle()
                    .frame(width:50,height: 50)
                    .foregroundColor(.red)
                Spacer()
                Rectangle()
                    .frame(width:50,height: 50)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding()
            Spacer()
            HStack
            {
                Rectangle()
                    .frame(width:50,height: 50)
                    .foregroundColor(.green)
                Spacer()
                Rectangle()
                    .frame(width:50,height: 50)
                    .foregroundColor(.yellow)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
