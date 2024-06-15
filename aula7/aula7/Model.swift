//
//  Model.swift
//  aula7
//
//  Created by Turma02-26 on 14/06/24.
//
//{
//    "date": "2024-01-01",
//    "name": "Confraternização mundial",
//    "type": "national"
//  },
import Foundation


struct feriado : Decodable, Hashable {
    var date : String?
    var name : String?
    var type : String?
}

