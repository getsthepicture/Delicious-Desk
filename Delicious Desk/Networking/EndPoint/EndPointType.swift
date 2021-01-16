//
//  EndPointType.swift
//  Delicious Desk
//
//  Created by Laurence Wingo on 1/16/21.
//

import Foundation

protocol EndPointType {
    var baseURL: URL {get}
    var path: String {get}
    var httpMethod: HTTPMethod {get}
    var task: HTTPTask {get}
    var headers: HTTPHeaders? {get}
}
