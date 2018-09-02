/************************************************************************
 * Licensed under Public Domain (CC0)                                    *
 *                                                                       *
 * To the extent possible under law, the person who associated CC0 with  *
 * this code has waived all copyright and related or neighboring         *
 * rights to this code.                                                  *
 *                                                                       *
 * You should have received a copy of the CC0 legalcode along with this  *
 * work. If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.*
 ************************************************************************/

/**
 Subscription.swift
 reactive-streams-swift
 
 Created by Ben Pinhorn on 2018-09-01.
 
 A Subscription represents a one-to-one lifecycle of a Subscriber subscribing to a Publisher.
 It can only be used once by a single Subscriber.
 It is used to both signal desire for data and cancel demand (and allow resource cleanup).
 
 */

import Foundation

public protocol Subscription {
    
    /**
     
     This function is used by the Subscriber to signal a request for elements from the Publisher. This function is additive, meaning if you do:
     
     1. .request(1)
     then
     2. .request(3)
     You will eventually receive 4 elements from the Publisher.
     
     - parameter requested: The number of elements the Subscriber is ready for next
     
    */
    func request(requested: CLong) -> Void
    
    /**
     
     This function is used by the Subscriber to signal that it wants no more elements from the Publisher. More elements may still come, but the Publisher should stop as soon as possible once this signal is called.
     
    */
    func cancel() -> Void
    
}
