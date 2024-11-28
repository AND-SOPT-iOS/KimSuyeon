//
//  PopularCharView.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 11/28/24.
//

import SwiftUI

struct PopularChartView: View {
    let popularAppList = PopularApp.popularAppList
    
    var body: some View {
        List(popularAppList) { popularApp in
            PopularCharViewCell(popularApp: popularApp)
                .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .scrollIndicators(.hidden)
        .background(Color.white)
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

struct PopularCharViewCell: View {
    let popularApp: PopularApp
    
    var body: some View {
        HStack {
            appImage
            textInfo
            Spacer()
            downloadButton
        }
    }
    
    var appImage: some View {
        popularApp.appImage
            .resizable()
            .frame(width: 62, height: 62)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .fill(.clear)
                    .stroke(Color(.systemGray4), lineWidth: 1)
                    .frame(width: 62, height: 62)
            }
    }
    
    var textInfo: some View {
        HStack(alignment: .top) {
            ranking
            titleAndSubtitle
        }
        .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 0))
    }
    
    var ranking: some View {
        Text(popularApp.ranking.description)
            .font(.system(size: 16, weight: .semibold))
    }
    
    var titleAndSubtitle: some View {
        VStack(alignment: .leading) {
            Text(popularApp.title)
                .font(.system(size: 16, weight: .regular))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
                .lineLimit(2)
            Text(popularApp.subtitle)
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(Color(.systemGray))
                .lineLimit(2)
        }
    }
    
    var downloadButton: some View {
        Button {
            
        } label: {
            Text("받기")
                .foregroundStyle(.blue)
                .font(.system(size: 16, weight: .bold))
        }
        .frame(width: 80, height: 32)
        .background(Color(.systemGray6))
        .cornerRadius(16)
    }
}

#Preview {
    PopularChartView()
}
