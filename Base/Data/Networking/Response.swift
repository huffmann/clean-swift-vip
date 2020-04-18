//
//  Response.swift
//  Base
//
//  Created by Juan Felipe Gallo on 4/18/20.
//  Copyright © 2020 Juan Felipe Gallo. All rights reserved.
//

import Foundation
import Alamofire

enum ServiceResponse<T> {
    case success([T]?)
    case failure(AFError?)
}

typealias serviceCompletion<T> = (ServiceResponse<T>) -> Void

