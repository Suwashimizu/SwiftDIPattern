//
//  APIClient.swift
//  WebDB_106
//
//  Created by kane kou on 2018/09/01.
//  Copyright © 2018年 suwashimizu. All rights reserved.
//  APIClientプロトコルに適合するにはresponeメソッドが必要
//  RはAPIRequestに適合
//  APIReqestはassociatedtype Responseを持っている
//

import Foundation

protocol APIClient {
    func response<R:APIRequest>(
        from request:R,
        completion:((R.Response) -> ())?
    )
}
