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
        intro: "NINONE pronouce as n, in, one. It’s an App which bundles several mini-apps together, to showcase what the new frameworks or Libraries from Apple Eco-System can do. The development details of each app can be found on the information sheet of the corresponding app.",
        year: "2022 - 2022"
    )
}
