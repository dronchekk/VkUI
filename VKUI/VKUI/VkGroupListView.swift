//
//  VkGroupListView.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 12.04.2022.
//

import SwiftUI

struct VkGroupListView: View {
    @ObservedObject var viewModel: GroupModelView

    var body: some View {
        List(viewModel.groups) { group in
            GroupCell(group: group)
        }
        .listStyle(PlainListStyle())
        .onAppear {
            viewModel.fetch()
        }
        .navigationTitle("Группы")
    }
}

struct VkGroupListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = GroupModelView()
        NavigationView {
            VkGroupListView(viewModel: viewModel)
        }
    }
}
