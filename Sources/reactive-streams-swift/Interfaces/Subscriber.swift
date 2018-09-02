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
 Subscriber.swift
 reactive-streams-swift
 
 Created by Ben Pinhorn on 2018-09-01.
 
 Will receive call to onSubscribe() once after passing an instance of Subscriber to Publisher.subscribe().

 No further notifications will be received until Subscription.request() is called.

 After signaling demand:

 1. One or more invocations of Subscriber.onNext(element) up to the maximum number defined by Subscription.request(n)
 2. Single invocation of Subscriber.onError(error) or Subscriber.onComplete() which signals a terminal state after which no further events will be sent.
 3. Demand can be signaled via Subscription.request(n) whenever the Subscriber instance is capable of handling more.
 
 */

import Foundation

public protocol Subscriber {
    
    /**
     
     Function which receives the signal that the Publisher has received the .subscribe() signal, and has created a Subscription
     for the Subscriber to use to request elements.
     
     - parameter subscription: the subscription created by the Publisher
 
     */
    func onSubscribe(subscription: Subscription) -> Void
    
    /**
     
     Function which receives the next element requested using the Subscription. Only to be called by the subscribed Publisher.
     
     - parameter next: the next element published by the Publisher
     
     */
    func onNext(next: Any) -> Void
    
    /**
     
     Function which receives the signal that the Publisher encountered an unrecoverable error. The Subscriber should receive no more elements after this is called, as it signals a terminal state.
     
     - parameter error: the error the Publisher encountered
     
     */
    func onError(error: Error) -> Void
    
    /**
     
     Function which receives the signal that the Publisher has published all of the requested elements. The Subscriber should receive no more elements after this is called, as it signals a terminal state.
     
    */
    func onComplete() -> Void
    
}
