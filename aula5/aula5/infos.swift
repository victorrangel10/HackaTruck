//
//  infos.swift
//  aula5
//
//  Created by Turma02-26 on 12/06/24.
//

import Foundation

struct Song : Identifiable{
    var id = UUID()
    var name: String
    var artist: String
    var capa : String
}



var arrayMusicas = [
    Song(name:"World Hold On - FISHER Rework", artist: "Bob Sinclair, FISHER, Steve Edwards", capa:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwo6qvzWPlm70HAs0EL8ikBhvJFvxP3XFdAQ&s"),
    Song(name: "Innerbloom", artist: "RUFUS DU SOL", capa:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMInvtjqLhIHNM58NrEsg9C5ZtE7rCJ4bAFQ&s"),
    Song(name: "Unholy", artist: "Sam Smith, Kim Petras", capa: "https://m.media-amazon.com/images/M/MV5BNTc3MTZkYTMtZjAxMi00ZDU5LWE5YWQtY2NjY2VlOGE2NjkwXkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg"),
    Song(name: "teste1", artist: "teste1", capa: ""),
    Song(name: "teste2", artist: "teste2", capa: ""),
    Song(name: "teste3", artist: "teste3", capa: ""),
    Song(name: "teste4", artist: "teste4", capa: ""),
    Song(name: "teste5", artist: "teste5", capa: ""),
    Song(name: "teste6", artist: "teste6", capa: ""),
]
