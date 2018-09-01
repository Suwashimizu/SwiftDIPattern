//
//  Injectable.swift
//  WebDB_106
//
//  Created by kane kou on 2018/09/01.
//  Copyright © 2018年 suwashimizu. All rights reserved.
//

import Foundation

protocol Injectable {
    //Protocolに関する型をプロトコルの一部として定義する
    associatedtype Dependency
    
    static func make(withDependency dependency: Dependency) -> Self
}
