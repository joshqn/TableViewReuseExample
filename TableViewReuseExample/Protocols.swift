//
//  Protocols.swift
//  TableViewReuseExample
//
//  Created by Joshua Kuehn on 1/14/16.
//  Copyright © 2016 Kuehn LLC. All rights reserved.
//

import Foundation
import UIKit

protocol ChosenSide {
    
    var leader: String { get set }
    var favoriteHobby: String { get set }
    var title: String { get set }
    var backgroundColor: UIColor? { get set }
    var seperatorColor: UIColor? { get set }
    var cellColor: UIColor? { get set }
    var textColor: UIColor? { get set }
    
}