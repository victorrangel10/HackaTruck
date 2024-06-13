//
//  telaMusical.swift
//  aula5
//
//  Created by Turma02-26 on 12/06/24.
//

import SwiftUI

struct telaMusical: View {
    var musica : Song
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Spacer()
                AsyncImage(url: URL(string: musica.capa)){ result in
                    result.image?
                        .resizable()
                        .frame(width: 200, height: 200)
                }
                Text("\(musica.name)")
                    .foregroundColor(.white)
                    .bold()
                Text("\(musica.artist)")
                    .foregroundStyle(.white)
                    .font(.caption)
                Spacer()
                HStack{
                    Image(systemName:"shuffle")
                        .resizable()
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 65,height: 65)
                    Image(systemName:"backward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 70,height: 70)
                    Image(systemName:"play.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80,height: 80)
                    Image(systemName:"forward.end.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 70,height: 70)
                    Image(systemName:"repeat")
                        .resizable()
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 65,height: 65)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    telaMusical(musica: Song(name: "VICTOR RANGEL", artist: "VITANQUE", capa: ""))
}
