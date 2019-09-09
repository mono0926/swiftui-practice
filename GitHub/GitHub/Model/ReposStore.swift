//
//  ReposStore.swift
//  GitHub
//
//  Created by mono on 2019/09/09.
//  Copyright © 2019 mono. All rights reserved.
//

import Foundation
import Combine

class ReposStore: ObservableObject {
    @Published private(set) var repos: [Repo] = []

    private let service: GithubService
    init(service: GithubService) {
        self.service = service
    }

    func fetch(matching query: String) {
        service.search(matching: query) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let repos): self?.repos = repos
                case .failure: self?.repos = []
                }
            }
        }
    }
}
