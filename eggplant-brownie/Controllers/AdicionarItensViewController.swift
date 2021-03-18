//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Tabata Sabrina Sutili on 16/03/21.
//  Copyright © 2021 Tabata Sabrina Sutili. All rights reserved.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    
     // MARK: IBOutlets
    
     @IBOutlet weak var nomeTextField: UITextField!
     @IBOutlet weak var caloriasTexField: UITextField!
    
     // MARK: Atributos
    
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBAction
    
    @IBAction func adicionarItem(_ sender: Any) {
        guard let nome = nomeTextField.text, let caloria =
            caloriasTexField.text else {
        return
        }
        
        if let numeroDeCalorias = Double(caloria) {
            let item = Item(nome: nome, caloria: numeroDeCalorias)
            delegate?.add(item)
        navigationController?.popViewController(animated: true)
        }
        }
}
