//
//  NetworkRouter.swift
//  Delicious Desk
//
//  Created by Laurence Wingo on 1/16/21.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?,_ _response: URLResponse?, _ error: Error?)->()

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
