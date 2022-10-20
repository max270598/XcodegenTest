//
//  Utils.swift
//  UniqueSdk
//
//  Created by Мах Ol on 19.10.2022.
//

import Foundation
import Networking

open class Summer {
    
    public static func makeSum(a: Int, b: Int) {
        let c = a + b
        
        self.makeRequest(delay: 3) {
            print("sum = \(c)")

        }
    }
    
     public static func makeRequest(delay: Double, closure: @escaping () -> ()) {
         DispatchQueue.main.asyncAfter(deadline: (.now() + delay)) {
             closure()
         }
     }

}
