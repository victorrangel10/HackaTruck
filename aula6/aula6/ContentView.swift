//
//  ContentView.swift
//  aula6
//
//  Created by Turma02-26 on 13/06/24.
//

import SwiftUI
import MapKit


struct ContentView: View {
    @State var SheetOnOff = false
    @State var aux =  Location(name: "Franca", coordinate: CLLocationCoordinate2D(latitude: 45.6207273, longitude: -7.9779185), flag: "data:image/jpeg;base64,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", description: "A França é um país localizado no continente europeu e tem como capital a cidade de Paris. Conta atualmente com mais de 65 milhões de habitantes, sendo a região da Ilha de França a mais populosa delas. Possui clima ameno e um terreno que varia de plano e suavemente ondulado a montanhoso nas regiões leste e sul.")
    @State var nomePais = "Brasil"
    @State  private var position = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -14.4095261, longitude: -51.31668),
        span: MKCoordinateSpan(latitudeDelta: 35, longitudeDelta: 35))
    )
    var body: some View {
        NavigationStack{
            ZStack{
                Map(position: $position){
                    ForEach(arrayListas){ pais in
                        Annotation(pais.name, coordinate: pais.coordinate){
                            Image(systemName: "globe")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .onTapGesture {
                                    aux = pais
                                    print(aux)
                                    SheetOnOff.toggle()
                                }
                               
                        }
                    }
                } .sheet(isPresented:$SheetOnOff){
                  
                    sheetpais(pais: $aux)
                }
                .ignoresSafeArea()
                VStack{
                    VStack{
                        Text("World Map")
                            .bold()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("\(nomePais)")
                            .padding(.bottom)
                    }
                    .scaledToFit()
                    .frame(width: 400)
                    .background(.white)
                    .opacity(0.5)
                    Spacer()
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(arrayListas){ pais in
                                AsyncImage(url: URL(string: pais.flag)){ result in
                                    result.image?
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 90)
                                        .onTapGesture {
                                            aux = pais
                                            print(aux)
                                            position = MapCameraPosition.region(MKCoordinateRegion(
                                                center: pais.coordinate,
                                                span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)))
                                        }
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
