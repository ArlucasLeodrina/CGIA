//
//  EntitySelectionTableViewController.swift
//  CGIA
//
//  Created by Pedro Giuliano Farina on 24/09/19.
//  Copyright © 2019 Pedro Giuliano Farina. All rights reserved.
//

import UIKit

public class EntitySelectionTableViewController: UITableViewController {
    private var type:Any?

    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            type = Professor.self
        case 1:
            type = Disciplina.self
        case 2:
            type = Turma.self
        case 3, 4:
            type = Aluno.self
        default:
            fatalError("Foi selecionada uma opção não prevista")
        }
        self.performSegue(withIdentifier: "disclosure", sender: self)
    }

    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cont = segue.destination as? EntityShowerTableViewController {
            cont.type = type
        }
    }
    
}
