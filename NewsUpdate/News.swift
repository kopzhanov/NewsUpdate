//
//  News.swift
//  NewsUpdate
//
//  Created by Alikhan Kopzhanov on 29.05.2023.
//

import Foundation

struct News{
    let date = Date()
    var title = ""
    var formatDate = ""
    
    init(title: String = "", formatDate: String = "") {
        self.title = randomString()
        self.formatDate = dateToString(from: self.date)
    }
}

func dateToString(from date: Date) -> String {
    let df = DateFormatter()
    df.dateFormat = "dd-MMM-yyyy HH:mm:ss"
    return df.string(from: date)
}

func randomString() -> String {
    let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ "
    let length = Int.random(in: 10...30)
    return String((0..<length).map{ _ in letters.randomElement()! })
}
