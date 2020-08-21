//
//  ProfileList.swift
//  Decisions
//
//  Created by Besar Ismaili on 02/10/2019.
//  Copyright © 2019 Besar Ismaili. All rights reserved.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let image: UIImage
    let jobTitle: String
}

struct ProfileList: View {
    var people: [Person] = [
        .init(firstName: "Steve", lastName: "Wozniak", image: #imageLiteral(resourceName: "Steve_Wozniak"), jobTitle: "Founder of Apple"),
        .init(firstName: "Steve", lastName: "Jobs", image: #imageLiteral(resourceName: "steve_jobs"), jobTitle: "Apple CEO"),
        .init(firstName: "Jony", lastName: "Ive", image: #imageLiteral(resourceName: "johny_ive"), jobTitle: "Head of Design")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                QuestionView()
                
                List(people) { person in
                    HStack {
                        Image.init(uiImage: person.image)
                            .resizable()
                            .cornerRadius(60)
                            .frame(width: 60, height: 60)
                            .scaledToFill()
                            .overlay(
                                RoundedRectangle(cornerRadius: 60)
                                    .strokeBorder(style: StrokeStyle(lineWidth: 1))
                                    .foregroundColor(.black)
                        )
                        VStack(alignment: .leading) {
                            Text("\(person.firstName) \(person.lastName)")
                                .fontWeight(.bold)
                            Text(person.jobTitle)
                                .fontWeight(.light)
                        }
                    }
                }
            }
            
            
        }
    }
}
