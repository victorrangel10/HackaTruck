//
//  ContentView.swift
//  aula5
//
//  Created by Turma02-26 on 12/06/24.
//

import SwiftUI

struct ContentView: View {
    
    let imageUrl = "data:image/jpeg;base64,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"
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ScrollView{
                    VStack{
                        AsyncImage(url: URL(string: imageUrl)){ result in
                            result.image?
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(width: 200, height: 200)
                        HStack{
                            Text("HackaFM")
                                .font(.title)
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                            Spacer()
                        }
                        HStack{
                            AsyncImage(url: URL(string: imageUrl)){ result in
                                result.image?
                                    .resizable()
                                    .padding(.leading)
                            }
                            .frame(width: 60, height: 40)
                            Text("HackaSong")
                                .foregroundColor(.white)
                                .bold()
                            
                            Spacer()
                        }
                        
                        //musicas
                        ForEach(arrayMusicas){ music in
                            NavigationLink(destination: telaMusical(musica: music)){
                                HStack{
                                    AsyncImage(url: URL(string: music.capa)){ result in
                                        result.image?
                                            .resizable()
                                    }
                                    .frame(width: 60, height: 60)
                                    VStack{
                                        Text("\(music.name)")
                                            .foregroundColor(.white)
                                            .bold()
                                            .frame(maxWidth:.infinity,alignment: .leading)
                                        Text("\(music.artist)")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                            .frame(maxWidth:.infinity,alignment: .leading)
                                    }
                                    Spacer()
                                    Image(systemName:"ellipsis")
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                
                                
                            }
                        }
                        HStack{
                            Text("Sugeridos")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .padding()
                                .bold()
                            Spacer()
                        }
                        
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(arrayMusicas){ musica in
                                    
                                    AsyncImage(url: URL(string: musica.capa)){ result in
                                        result.image?
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                    }
                                    
                                    
                                }
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
