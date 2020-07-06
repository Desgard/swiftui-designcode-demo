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
            
            TitleView()
                .blur(radius: 20)

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
            
            
            BottomCardView()
                .blur(radius: 20)
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
            Image("Certificate1")
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

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Image("Background")
            Spacer()
        }
    }
}

struct BottomCardView: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.1)
            Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .multilineTextAlignment(.leading)
                .font(.subheadline)
                .lineSpacing(4)
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(x: 0, y: 500)
    }
}
