//
//  ContentView.swift
//  Aula3
//
//  Created by Turma02-26 on 07/06/24.
//

import SwiftUI


struct ContentView: View {
    
    @State var backcolor : Color = .sobrepeso
    
    @State var pesostr: String = "Seu peso aqui"
    
    @State var alturastr: String = "0"
    
    
    @State var imc: Float! = 0.0
    
    @State var textoTela = "Normal"
    
    @State private var isshowing = false


    
    var body:  some View {
        
     
            
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(backcolor)
            
            VStack{
                Text("Calculadora de IMC")
                    .padding()
                
                TextField("", text: $pesostr)
                    .frame(width: 300, height: 30)
                    .multilineTextAlignment(.center)
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding()
                
                TextField("", text: $alturastr)
                    .frame(width: 300, height: 30)
                    .multilineTextAlignment(.center)
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding()
                
//                var peso:Float = Float(peso)
//                
//                var altura:Float  = Float(altura)
//                
                Button("Calcular"){
                    print("botao")
                    if let peso = Float(pesostr),let altura = Float(alturastr){
                        
                        imc = peso/(altura * altura)
                        
                        if( imc <= 18.5 ){
                            backcolor = .baixoPeso
                            textoTela = "Baixo peso"
                        }
                        
                        else if( imc > 18.5 && imc < 24.99  ){
                            backcolor = .pesonormal
                            textoTela = "Normal"
                        }
                        
                        else if( imc > 25 && imc < 29.99  ){
                            backcolor = .sobrepeso
                            textoTela = "Sobrepeso"
                        }
                        
                        if( imc > 30.0 ){
                            backcolor = .obesidade
                            textoTela = "Obesidade"
                        }

                    }
                                        
                }
                .frame(width: 100, height: 35)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(5)
                .padding()
                
                Text(textoTela)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
                Image(.tabelaIMC)
                    .resizable()
                    .scaledToFit()
                
                }
               
            
        }
        
    
        
    
        }
        
    }


#Preview {
    ContentView()
}
