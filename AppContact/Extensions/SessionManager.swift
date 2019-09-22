//
//  SessionManager.swift
//  AppContact
//
//  Created by Alex Larin on 22/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import Foundation
import Alamofire

extension SessionManager{
    static let custom: SessionManager = {
        // Конфигурация по умолчанию
        let configuration = URLSessionConfiguration.default
        // Добавляем заголовки из Alamofire
        configuration.httpAdditionalHeaders = SessionManager.defaultHTTPHeaders
        
        // менеджер сессии
        let sessionManager = SessionManager(configuration: configuration)
        return sessionManager
    }()
}
