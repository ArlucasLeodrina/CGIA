//
//  Nota.swift
//  CGIA
//
//  Created by Pedro Giuliano Farina on 24/09/19.
//  Copyright © 2019 Pedro Giuliano Farina. All rights reserved.
//

import Foundation

public struct Grade: Codable {
    var id: Int?
    var grades: [Double]?
    var finalGrade: Double?
    var studentID: Int?
    var classroomID: Int?
}
