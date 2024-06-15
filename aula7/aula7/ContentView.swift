//
//  ContentView.swift
//  aula7
//
//  Created by Turma02-26 on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var  vm = ViewModel()
    @State var ano: String 

    var body: some View {
        NavigationStack{
            VStack {
                List(vm.feriados, id: \.self){ f in
                    NavigationLink(destination: telaInfo(data: f.date!, nome: f.name!,tipo: f.type!)){
                        Text(f.name!)
                    }
                }
                .navigationTitle("Feriados \(ano)")
                
            }
            .onAppear(){
                vm.fetchFeriado(ano: ano)
            }
        }
    }
}

#Preview {
    ContentView(ano: "2024")
}
