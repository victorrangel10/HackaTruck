//
//  desafio3.swift
//  Aula1UFES
//
//  Created by Turma02-26 on 06/06/24.
//

import SwiftUI

struct desafio3: View {
    var body: some View {
        VStack{
            
            HStack{// headers
                ZStack{
                    Image(.raony)
                        .resizable()
                        .frame(width: 125, height: 125)
                        .cornerRadius(100)
                        .padding(.horizontal)
                        
                    
                    Circle().frame(width:25).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).overlay{Text("+").foregroundColor(.white)}.offset(x:35,y:55)

                    
                }
                        
                VStack{// followers
                    HStack{//numbers
                        VStack{//sq1
                            Text("8")
                            Text("Posts").font(.caption)
                        }
                        VStack{//sq2
                            Text("12k")
                            Text("Seguidores").font(.caption)
                        }
                        
                    
                        VStack{//sq3
                            Text("2k")
                            Text("Seguindo").font(.caption)
                        }
                    }
                    //editar perfil
                    .padding()
                    Text("Editar Perfil")
                        .frame(width: 200,height:30 )
                        .background(.gray)
                }
            }
            VStack{// bio
                HStack{
                    Text("Raony Togneri").bold()
                    Spacer()
                }
                HStack{
                    Text("fotografia musica ufes etc ")
                    Spacer()
                }
              
            }.padding()
            HStack{ //icones
                
                Image(.image3)
//                Spacer()
//                Image(.image).resizable().frame(width: 50,height: 50)
//                Spacer()
//                Image(.image1).resizable().frame(width: 50,height: 50)
//                Spacer()
//                Image(.image2).resizable().frame(width: 50,height: 50)
//                Spacer()
            }
            HStack{
                Text("").frame(width: 125,height: 125).background(.gray);
                Text("").frame(width: 125,height: 125).background(.gray);
                Text("").frame(width: 125,height: 125).background(.gray);
            }
            HStack{
                Text("").frame(width: 125,height: 125).background(.gray);
                Text("").frame(width: 125,height: 125).background(.gray);
                Text("").frame(width: 125,height: 125).background(.gray);
            }
            HStack{
                Text("").frame(width: 125,height: 125).background(.gray);
                Text("").frame(width: 125,height: 125).background(.gray);
                Text("").frame(width: 125,height: 125).background(.gray);
            }
        }
        Spacer()
    }
    
}

#Preview {
    desafio3()
}
    
