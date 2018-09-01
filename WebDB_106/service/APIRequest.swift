//
//  APIRewuest.swift
//  WebDB_106
//
//  Created by kane kou on 2018/09/01.
//  Copyright © 2018年 suwashimizu. All rights reserved.
//  APIリクエストとレスポンスの型定義に制約を儲ける
//

import Foundation

protocol APIRequest {
    associatedtype Response
}
