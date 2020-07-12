//
//  UpdateList.swift
//  DesignCode
//
//  Created by Harry Twan on 2020/7/11.
//

import SwiftUI

struct UpdateList: View {
    
    @ObservedObject var store = UpdateStore()
    
    func addUpdate() {
        store.updates.append(Update(image: "Illustration4", title: "New Item", text: "text", date: "Jan 2"))
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(store.updates) { update in
                    NavigationLink(
                        destination: UpdateDetail(update: update)
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
                .onDelete { indexSet in
                    self.store.updates.remove(at: indexSet.first!)
                }
                .onMove { (source: IndexSet, destination: Int) in
                    self.store.updates.move(fromOffsets: source, toOffset: destination)
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle(Text("Updated"))
            .navigationBarItems(leading: Button(action: addUpdate) {
                Image(systemName: "text.badge.plus")
                    .renderingMode(.original)
                    .font(.system(size: 16, weight: .medium))
                    .frame(width: 36, height: 36)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            }, trailing: EditButton())
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
    Update(image: "Illustration2", title: "Webflow", text: "Design and animate a high converting landing page with advanced interactions, payments and CMS", date: "OCT 1"),
    Update(image: "Illustration3", title: "ProtoPie", text: "Learn how to code custom UIs, animations, gestures and components in Xcode 11", date: "AUG 1"),
    Update(image: "Illustration4", title: "Framer Playground", text: "Create powerful animations and interactions with the Framer Xcode editor", date: "JUN 1"),
]
