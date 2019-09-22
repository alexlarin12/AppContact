//
//  Session.swift
//  AppContact
//
//  Created by Alex Larin on 18/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import Foundation
class Session {
    var userId:Int = 0
    var registrationName:String = ""
    var newUserName:String = ""
    var newPassword:String = ""
    var token:String = ""
    
    static let instance = Session()
    private init(){}
    
}





