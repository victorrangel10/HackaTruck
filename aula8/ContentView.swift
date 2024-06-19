//
//  ContentView.swift
//  aula8
//
//  Created by Turma02-26 on 19/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var  vm = ViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                Image(.quitandaaa)
                    .resizable()
                    .frame(width: 400,height: 200)
                VStack {
                    HStack{
                        Text("Em Xique Xique - BA")
                            .padding()
                        Spacer()
                    }
                    
                    List(vm.quitandas, id: \.self){ f in
                        NavigationLink(destination:QuitandaView(quitanda: f)){
                            Text(f.nomeQuitanda!)
                        }
                    }
                    .navigationTitle("Quitandas")                    
                }
                .onAppear(){
                    vm.fetchFeriado()
                }
            }}
    }
}
#Preview {
    ContentView()
}
