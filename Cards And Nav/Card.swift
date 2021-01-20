//
//  Card.swift
//  Cards And Nav
//
//  Created by Ala'a Araishi on 1/20/21.
//

import Foundation
import SwiftUI

struct Card: Identifiable {
    let imageName: String
    let name: String
    let phone: String
    let email: String
    let address: String
    let comments: Int
    let img: Int
    let id = UUID()
}

let Cards = [
    Card(imageName: "bernardLaw", name: "Bernard Law", phone: "+1(268)-8110134", email: "blaw@yeilmail.com", address: "242 Wildrose River 16040 Wisconsin", comments: 3, img: 5),
    Card(imageName: "carolinePhan", name: "Caroline Phan", phone: "+1(698)-1881047", email: "cphan@neymail.com", address: "249 Modoc Half 75290 Kansas", comments: 6, img: 9),
    Card(imageName: "evaFlint", name: "Eva Flint", phone: "+1(234)-3442899", email: "eflint@zuimail.com", address: "952 Baker Haggerty 90562 Mississippi", comments: 8, img: 3),
    Card(imageName: "harryGreen", name: "Harry Green", phone: "+1(765)-7448466", email: "hgreen@neymail.com", address: "176 Flanigan Road 49223 Washington", comments: 3, img: 5),
    Card(imageName: "helenMora", name: "Helen Mora", phone: "+1(213)-5115553", email: "hmora@vuomail.com", address: "635 Prospect River 58641 Kansas", comments: 1, img: 2),
    Card(imageName: "jimmySky", name: "Jimmy Sky", phone: "+1(453)-0663954", email: "jsky@ypmail.com", address: "763 University Trail 81701 Michigan", comments: 6, img: 1)
]
