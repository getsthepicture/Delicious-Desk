//
//  HTTPTask.swift
//  Delicious Desk
//
//  Created by Laurence Wingo on 1/16/21.
//

import Foundation

public typealias HTTPHeaders = [String:String]

public enum HTTPTask{
    case request
    
    case requestParameters(bodyParameters: Parameters?, urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?, urlParameters: Parameters?, additionHeaders: HTTPHeaders?)
    
    //case download, upload...etc
}
