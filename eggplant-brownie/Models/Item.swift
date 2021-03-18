//
//  Item.swift
//  eggplant-brownie
//
//  Created by Tabata Sabrina Sutili on 15/03/21.
//  Copyright © 2021 Tabata Sabrina Sutili. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    
    //MARK: - Atributo
    
    let nome: String
    let calorias: Double
    
    //MARK: - Init
    
    init(nome: String, caloria: Double) {
        self.nome = nome
        self.calorias = caloria
    }
    
    //MARK: - NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(nome, forKey: "nome")
        aCoder.encode(calorias, forKey: "calorias")
    }
    required init?(coder aDecoder: NSCoder) {
        nome = aDecoder.decodeObject(forKey: "nome") as! String
        calorias = aDecoder.decodeDouble(forKey: "calorias")
    
    }
}
