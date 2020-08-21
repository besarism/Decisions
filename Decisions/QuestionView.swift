//
//  QuestionView.swift
//  Decisions
//
//  Created by Besar Ismaili on 02/10/2019.
//  Copyright © 2019 Besar Ismaili. All rights reserved.
//

import SwiftUI

struct Question: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let type: QuestionType
    let value: Any
}

enum QuestionType {
    case boolean
    case radio
}


struct QuestionView: View {
    let question = Question(title: "Are you going to eat here on monday whatsup kekfelk ffef?", description: "Ktireter", type: .boolean, value: true)
    var body: some View {
        VStack(alignment: .leading) {
            Text(question.title)
                .fontWeight(.bold)
                .padding(.leading, 10)
                .frame(height: 20)
                .lineLimit(3)
            Text(question.description)
                .fontWeight(.light)
                .padding(.leading, 10)
                .frame(height: 20)
        }
    }
}
