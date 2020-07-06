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
            
            HStack {
                Text("Certificates")
                Spacer()
            }

            BackCardView()
                .frame(width: 340, height: 220)
                .background(Color("background3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -40.0)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(10))
                .rotation3DEffect(
                    Angle(degrees: 10),
                    axis: (x: 10.0, y: 0.0, z: 0.0)
                )
                .blendMode(.hardLight)
            
            BackCardView()
                .frame(width: 340, height: 220)
                .background(Color("background10"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -20.0)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(5))
                .rotation3DEffect(
                    Angle(degrees: 5),
                    axis: (x: 10.0, y: 0.0, z: 0.0)
                )
                .blendMode(.hardLight)
            
            CardView()
                .blendMode(.hardLight)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                HStack{
                    VStack(alignment: .leading) {
                        Text("Hello SwiftUI!")
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

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        
    }
}
