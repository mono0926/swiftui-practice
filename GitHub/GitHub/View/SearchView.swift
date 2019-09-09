//
//  SearchView.swift
//  GitHub
//
//  Created by mono on 2019/09/09.
//  Copyright © 2019 mono. All rights reserved.
//

import SwiftUI

struct SearchView : View {
    @State private var query: String = "Swift"
    @EnvironmentObject var repoStore: ReposStore

    var body: some View {
        NavigationView {
            List {
                TextField("Type something...", text: $query, onCommit: fetch)
                    .autocapitalization(.none)
                ForEach(repoStore.repos) { repo in
                    RepoRow(repo: repo)
                }
            }.navigationBarTitle(Text("Search"))
        }.onAppear(perform: fetch)
    }

    private func fetch() {
        repoStore.fetch(matching: query)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .environmentObject(ReposStore(service: .init()))
    }
}

