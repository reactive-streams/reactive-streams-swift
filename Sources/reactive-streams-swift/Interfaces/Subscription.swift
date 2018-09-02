//
//  Subscription.swift
//  reactive-streams-swift
//
//  Created by Ben Pinhorn on 2018-09-01.
//

//public interface Subscription {
//    public void request(long n);
//    public void cancel();
//}

import Foundation

public protocol Subscription {
    
    func request(requested: CLong) -> Void
    func cancel() -> Void
    
}
