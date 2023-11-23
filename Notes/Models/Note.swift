//
//  Note.swift
//  Notes
//
//  Created by Gavrilovici Ana on 17/11/23.
//

import Foundation
import SwiftData

@Model
class Note: Identifiable {
    @Attribute(.unique) var id: String?
    var content: String
    var createdAt: Date
    //var category: String
    //var tags: [Tag]
    
    @Relationship(inverse: \Tag.notes) var tags: [Tag]?
    
    init(id: String, content: String, createdAt: Date, tags: [Tag]) {
        self.id = id
        self.content = content
        self.createdAt = createdAt
        self.tags = tags
        
    }
}
