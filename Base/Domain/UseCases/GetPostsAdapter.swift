//
//  GetPostsAdapter.swift
//  Base
//
//  Created by Juan Felipe Gallo on 4/17/20.
//  Copyright © 2020 Juan Felipe Gallo. All rights reserved.
//

import Foundation

struct GetPostsDependencies {
    let service = GetPostsWebService<Post>()
}

final class GetPostsAdapter: GetPostsUseCase {

    var dependencies: GetPostsDependencies
    
    init(dependencies: GetPostsDependencies = .init() ) {
        self.dependencies = dependencies
    }
    
    func getAllPosts(completion: @escaping serviceCompletion<Post>) {
        
        dependencies.service.get() { (response) in
            switch response {
            case .success(let posts):
                completion(.success(posts))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
