//
//  ContentView.swift
//  DesignCode
//
//  Created by Harry Twan on 2020/7/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
            }
            .frame(width: 300, height: 220)
            .background(Color.blue)
            .cornerRadius(20)
            .shadow(radius: 20)
            .offset(x: 0, y: -20.0)
            

            VStack {
                HStack {
                    HStack{
                        VStack(alignment: .leading) {
                            Text("Hello UIKit!")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                            Text("Certificate")
                                .foregroundColor(Color("accent"))
                        }
                        
                    }
                    Spacer()
                    Image("Logo")
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                Spacer()
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 340, height: 110, alignment: .top)
            }
            .frame(width: 340, height: 220)
            .background(Color("background2"))
            .cornerRadius(20)
            .shadow(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
