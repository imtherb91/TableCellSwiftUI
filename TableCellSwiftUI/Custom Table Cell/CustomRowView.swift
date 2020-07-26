//
//  CustomRowView.swift
//  TableCellSwiftUI
//
//  Created by Luke Allen on 7/24/20.
//

import SwiftUI

struct CustomRowView: View {
    
    var player: ThunderPlayer
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "\(player.number).circle.fill").resizable(capInsets: /*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/, resizingMode: /*@START_MENU_TOKEN@*/.stretch/*@END_MENU_TOKEN@*/).frame(width: 30, height: 30).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(player.name).font(.body)
                Text(player.position).font(.caption).foregroundColor(.secondary)
            }
            Spacer()
        }.padding(.horizontal, 20).padding(.vertical, 12)
    }
}

struct CustomRowView_Previews: PreviewProvider {
    static var previews: some View {
        CustomRowView(player: ThunderPlayer(name: "Luke Allen", number: 20, position: "Point Guard"))
    }
}
