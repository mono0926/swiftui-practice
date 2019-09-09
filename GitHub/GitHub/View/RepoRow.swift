//
//  RepoRow.swift
//  GitHub
//
//  Created by mono on 2019/09/09.
//  Copyright © 2019 mono. All rights reserved.
//

import SwiftUI

struct RepoRow: View {
    let repo: Repo

    var body: some View {
        VStack(alignment: .leading) {
            Text(repo.name)
                .font(.headline)
            Text(repo.description)
                .font(.subheadline)
        }
    }
}

struct RepoRow_Previews: PreviewProvider {
    static var previews: some View {
        List {
         RepoRow(repo: Repo(id: 1,
                            name: "Hello",
                            description: "World"))
        }
    }
}

