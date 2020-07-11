//
//  HomeView.swift
//  DesignCode
//
//  Created by Harry Twan on 2020/7/9.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var showProfile: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Watching")
                    .font(.system(size: 20, weight: .bold))
                
                Spacer()
                
                AvatarView(showProfile: $showProfile)
            }
            .padding(.horizontal)
            .padding(.top, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(0 ..< 5) { _ in
                        SectionView()
                    }
                }
                .padding(30)
                .padding(.leading, 14)
                .padding(.bottom, 30)
            }

            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(false))
    }
}

struct SectionView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text("Prototype designs in SwiftUI")
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(.white)
                Spacer()
                Image("Logo")
            }
            
            Text("18 Sections".uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            Image("Certificate1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: 275, height: 275)
        .background(Color("background3"))
        .cornerRadius(30)
        .shadow(
            color: Color("background3").opacity(0.3),
            radius: 20,
            x: 0,
            y: 20
        )
    }
}
