//
//  Disciplina.swift
//  CGIA
//
//  Created by Pedro Giuliano Farina on 24/09/19.
//  Copyright © 2019 Pedro Giuliano Farina. All rights reserved.
//

import Foundation

public class Disciplina {
    public private(set) var nome: String

    public private(set) var instituicao: Instituicao
    public private(set) var turmas: [Turma] = []

    public init(instituicao: Instituicao) {
        self.instituicao = instituicao
        nome = ""
    }
}
