//
//  UpdateList.swift
//  DesignCode
//
//  Created by Harry Twan on 2020/7/11.
//

import SwiftUI

struct UpdateList: View {
    var body: some View {
        NavigationView {
            List(updateData) { update in
                NavigationLink(
                    destination: Text(update.text)
                ) {
                    
                    HStack {
                        Image(update.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .background(Color.black)
                            .cornerRadius(20)
                            .padding(.trailing, 4)
                        
                        VStack(alignment: .leading, spacing: 8.0) {
                            Text(update.title)
                                .font(.system(size: 20, weight: .bold))
                            Text(update.text)
                                .lineLimit(2)
                                .font(.subheadline)
                                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            
                            Text(update.date)
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Updated"))
        }
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}

struct Update: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var text: String
    var date: String
}

let updateData = [
    Update(image: "Illustration1", title: "SwiftUI Advance", text: "Take your SwiftUI app to the App Store with advanced techniques like API data, packages and CMS", date: "Jan 1"),
    Update(image: "Illustration1", title: "SwiftUI", text: "Tect", date: "Jan 1"),
    Update(image: "Illustration1", title: "SwiftUI", text: "Tect", date: "Jan 1"),
    Update(image: "Illustration1", title: "SwiftUI", text: "Tect", date: "Jan 1"),
]
