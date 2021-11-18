//
//  PlacesListResponse.swift
//  DemoApp
//
//  Created by Ravi dwivedi on 03/12/20.
//  Copyright © 2020 Ravi dwivedi. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct PlacesListResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
    
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case totalResults
        case articles = "articles"
    }
    
}

// MARK: - Article
struct Article: Codable {
    let source: Source
    let author, title, articleDescription: String
    let url: String
    let urlToImage: String
    let publishedAt: String
    let content: String
    
    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String
}
