//
//  StartupViewLogic.swift
//  Ridna Mova
//  Model: Logic behind the startup view
//  Created by Yevhenii Ganusich on 1/9/23.
//

import Foundation

struct StartupViewLogic{
    var isStartUpOn: Bool
    
    mutating func toggleView(){
        return isStartUpOn.toggle()
    }
    
    func startUpOn() -> Bool{
        return isStartUpOn
    }
}
