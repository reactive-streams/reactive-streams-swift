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
 Publisher.swift
 reactive-streams-swift
 
Created by Ben Pinhorn on 2018-09-01.
 
 A Publisher is a provider of a potentially unbounded number of sequenced elements, publishing them according to
 the demand received from its Subscriber(s).
 
 A Publisher can serve multiple Subscribers subscribed dynamically
 at various points in time.
 
 
 */

import Foundation

public protocol Publisher {
    
    /**
    
    Subscribe a Subscriber to this Publisher, to receive elements from it
 
    Request elements using the Subscription given back by the Publisher using onSubscribe(), by calling Subscription.request(num of elements)
     
     - parameter subscriber: The subscriber which will receive the elements given by the Publisher
     
    */
    func subscribe(subscriber: Subscriber)
    
}
