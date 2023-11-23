//
//  Filtres.swift
//  Notes
//
//  Created by Gavrilovici Ana on 22/11/23.
//

import Foundation

enum NoteSortBy: Identifiable, CaseIterable {
    var id: Self { self }
    case createdAt
    case content
    
    var text: String {
        switch self {
        case .createdAt: return "Created at"
        case .content: return "Content"
        }
    }
}

enum OrderBy: Identifiable, CaseIterable {
    
    var id: Self { self }
    case ascending
    case descending
    
    var text: String {
        switch self {
        case .ascending:
            return "Ascending"
        case .descending:
            return "Descending"
        }
    }
    
}

