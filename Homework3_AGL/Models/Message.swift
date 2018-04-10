//
//  Message.swift
//  Homework3_AGL
//
//  Created by Alexis Gonzalez on 4/9/18.
//  Copyright © 2018 alexgsolutions. All rights reserved.
//

import Foundation

//Struct for Message payload
struct Message {
    var fromName: String
    var body: String
    var state: MessageState
}

//Extention  Message for hold data sample
extension Message {
    static var defaultData: [Message] {
        return [
            Message(fromName: "Maria", body: "We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul.", state: MessageState.pending),
            Message(fromName: "Antonio", body: "Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde.", state: MessageState.sent),
            Message(fromName: "Ricardo", body: "I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home.", state: MessageState.failed),
            Message(fromName: "Jessica", body: "Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula.", state: MessageState.pending),
            Message(fromName: "Alex", body: "Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana.", state: MessageState.sent)
            
        ]
    }
}

//Enum for state
enum MessageState: Int {
    case pending
    case sent
    case failed
}

//extention for Message State functionality
extension MessageState {
    var txt:String{
        switch self {
        case .pending:
            return "pending"
        case .sent:
            return "sent"
        case .failed:
            return "failed"
        }
    }
}
