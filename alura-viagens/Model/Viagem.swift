//
//  Viagem.swift
//  alura-viagens
//
//  Created by Tabata Sabrina Sutili on 18/03/21.
//  Copyright © 2021 Tabata Sabrina Sutili. All rights reserved.
//

import UIKit

class Viagem: NSObject {
    let titulo:String
    let quantidadeDeDias:Int
    let preco:String
    let caminhoDaImagem:String
    
    init(titulo:String, quantidadeDeDias:Int, preco:String, caminhoDaImagem:String) {
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.caminhoDaImagem  = caminhoDaImagem
    }

}
