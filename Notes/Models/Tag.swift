//
//  Tag.swift
//  Notes
//
//  Created by Gavrilovici Ana on 17/11/23.
//

import Foundation
import SwiftData

@Model
class Tag: Identifiable {
    @Attribute(.unique) var id: String?
    var name: String
    
    @Relationship var notes: [Note]
    var isChecked: Bool = false
    
    init(id: String, name: String, notes: [Note] = []) {
            self.id = id
            self.name = name
            self.notes = notes
        }
    
}
