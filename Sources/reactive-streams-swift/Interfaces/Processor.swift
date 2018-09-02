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
 Processor.swift
 reactive-streams-swift
 
 Created by Ben Pinhorn on 2018-09-01.
 
 A Processor represents a processing stage—which is both a Subscriber
 and a Publisher and obeys the contracts of both.
 
 */

import Foundation

public protocol Processor: Subscriber, Publisher {}
