//
//  Publisher.swift
//  reactive-streams-swift
//
//  Created by Ben Pinhorn on 2018-09-01.
//

import Foundation

public protocol Publisher {
    
    func subscribe(subscriber: Subscriber)
    
}
