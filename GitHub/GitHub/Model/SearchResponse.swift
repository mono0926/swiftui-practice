//
//  SearchResponse.swift
//  GitHub
//
//  Created by mono on 2019/09/09.
//  Copyright © 2019 mono. All rights reserved.
//

import Foundation

struct SearchResponse: Decodable {
    let items: [Repo]
}
