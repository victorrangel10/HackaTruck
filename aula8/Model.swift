//
//  Model.swift
//  aula8
//
//  Created by Turma02-26 on 19/06/24.
//

import Foundation

//
//[
//    {
//        "_id": "80449beda0facb13d7e908bae1304a95",
//        "_rev": "1-644da170875ff1ca6bd97b6a6bc00e40",
//        "nomeQuitanda": "QuiQui",
//        "enderecoQuitanda": "Rua Gastao Roubach",
//        "frutasDisponiveis": [
//            {
//                "nome": "Banana",
//                "foto": "",
//                "nutrientes": [
//                    "Carb",
//                    "Protein"
//                ]
//            },
//            {
//                "nome": "Kiwi",
//                "foto": "",
//                "nutrientes": [
//                    "Green",
//                    "Seeds"
//                ]
//            }
//        ]
//    },
//    {
//        "_id": "f75a4a66a9a783de13581d71014b94cc",
//        "_rev": "1-7ce9093e0d0eced0d134ac86506cb6b8",
//        "nomeQuitanda": "Gonzaguinha",
//        "enderecoQuitanda": "Xique Xique - BA",
//        "frutasDisponiveis": [
//            {
//                "nome": "XiqueFruta",
//                "foto": "",
//                "nutrientes": [
//                    "Joao",
//                    "Gonzaga"
//                ]
//            },
//            {
//                "nome": "BahiaFruta",
//                "foto": "",
//                "nutrientes": [
//                    "Ponto",
//                    "Carlos"
//                ]
//            }
//        ]
//    }
//]

struct Fruta: Decodable, Hashable{
    var nome : String?
    var foto :  String?
    var nutrientes : [String?]
}

struct Quitanda : Decodable, Hashable{
    var nomeQuitanda : String?
    var enderecoQuitanda : String?
    var frutasDisponiveis : [Fruta?]
}



