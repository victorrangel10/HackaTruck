//
//  ContentView.swift
//  aula4
//
//  Created by Turma02-26 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView(){
            ZStack{
                Rectangle()
                    .foregroundColor(.pink)
                    .edgesIgnoringSafeArea(.top)
                Circle()
                    .padding()
                Image(systemName: "paintbrush.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.pink)
                    .frame(width: 200)
            }
            .tabItem {
                Label("Rosa", systemImage: "paintbrush.fill")
            }
            
            ZStack{
                Rectangle()
                    .foregroundColor(.blue)
                    .edgesIgnoringSafeArea(.top)
                Circle()
                    .padding()
                Image(systemName: "paintbrush.pointed.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.blue)
                    .frame(width: 200)
            }
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            
            ZStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .edgesIgnoringSafeArea(.top)
                Circle()
                    .padding()
                Image(systemName: "paintpalette.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
                    .frame(width: 200)
            }
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            
            List {
                
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.gray)
                        .frame(width: 20,height: 20)
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.gray)
                        .frame(width: 20,height: 20)
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.gray)
                        .frame(width: 20,height: 20)
                }
            }
            .tabItem {
                Label("Lista",systemImage: "list.bullet")
            }
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
