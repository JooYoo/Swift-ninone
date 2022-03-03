//
//  AboutVM.swift
//  Ninone
//
//  Created by Yu on 2022/3/2.
//

import Foundation

class AboutVM: ObservableObject {
    @Published var about = About(
        name: "NINONE",
        icon: "💾",
        version: "1.0.0",
        intro: "NINONE pronouce as n, in, one. It’s a showcase of iOS development learning. This app bundles several mini-projects together, to represent what the new frameworks or Libraries can do. The development details of each project can be found on the information sheet of the corresponding project.",
        year: "2022 - 2022"
    )
}
