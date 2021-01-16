//
//  NetworkManager.swift
//  Delicious Desk
//
//  Created by Laurence Wingo on 1/16/21.
//

import Foundation

struct NetworkManager {
    
    enum Result<String>{
        case success
        case failure(String)
    }
    
    enum NetworkResponse: String {
        case success
        case authenticationError = "You need to be authenticated first."
        case badRequest = "Bad request"
        case outdated = "The url you requested is outdated"
        case failed = "Network request failed"
        case noData = "Response returned with no data to decode"
        case unableToDecode = "We could not decode the response."
    }
    
    static let environment: NetworkEnvironment = .production
    static let USDA_API_Key = "Your_API_KEY"
    private let router = Router<MovieAPI>()
    
    fileprivate func handleNetworkResponse(_ response: HTTPURLResponse) -> Result<String>{
        switch response.statusCode {
        case 200...299:
            return .success
        case 401...500:
            return .failure(NetworkResponse.authenticationError.rawValue)
        case 501...599:
            return .failure(NetworkResponse.badRequest.rawValue)
        case 600:
            return .failure(NetworkResponse.outdated.rawValue)
        default:
            return .failure(NetworkResponse.failed.rawValue)
        }
    }
}




