//
//  sheetpais.swift
//  aula6
//
//  Created by Turma02-26 on 13/06/24.
//

import SwiftUI



struct sheetpais: View {
    @Binding var pais : Location
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text(pais.name)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                AsyncImage(url: URL(string: "\(pais.flag)")){ result in
                    result.image?
                        .resizable()
                    .frame(width: 250, height: 200)}
                .padding()
                Text("\(pais.description)")
                    .padding()
                
            }
        }
    }
}
//
//#Preview {
//    sheetpais(pais: Location(name: "", coordinate: coordinate: CLLocationCoordinate2D(latitude: 45.6207273, longitude: -7.9779185), flag: "", description: ""))
//}
