//
//  MenuItem.swift
//  menu
//
//  Created by Omer Cagri Sayir on 28.11.2023.
//

import Foundation

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var price: String
    var imageName: String
}
