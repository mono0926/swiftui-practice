//
//  Repo.swift
//  GitHub
//
//  Created by mono on 2019/09/09.
//  Copyright © 2019 mono. All rights reserved.
//

import Foundation

struct Repo: Decodable, Identifiable {
    var id: Int
    let name: String
    let description: String
}
