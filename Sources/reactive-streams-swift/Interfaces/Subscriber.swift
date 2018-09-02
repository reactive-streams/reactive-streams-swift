//
//  Subscriber.swift
//  reactive-streams-swift
//
//  Created by Ben Pinhorn on 2018-09-01.
//

import Foundation

public protocol Subscriber {
    
    func onSubscribe(subscription: Subscription) -> Void
    func onNext(next: Any) -> Void
    func onError(error: Error) -> Void
    func onComplete() -> Void
    
}
