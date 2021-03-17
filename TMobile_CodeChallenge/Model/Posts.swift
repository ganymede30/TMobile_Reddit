//
//  Posts.swift
//  TMobile_CodeChallenge
//
//  Created by MKenny on 3/17/21.
//

import Foundation

struct Feed: Decodable {
    let data: FeedInfo
}

struct FeedInfo: Decodable {
    let children: [Post]
    let after: String?
}

struct Post: Decodable {
    let data: PostInfo
}

struct PostInfo: Decodable {
    let title: String
    let thumbnail: String
    let thumbnail_height: Int?
    let thumbnail_width: Int?
    let score: Int
    let num_comments: Int
}


