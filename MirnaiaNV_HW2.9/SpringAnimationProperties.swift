//
//  SpringAnimationProperties.swift
//  MirnaiaNV_HW2.9
//
//  Created by Наталья Мирная on 10/12/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import Spring

struct SpringAnimationProperties {
    let animation: String
    let curve: String
    let force: CGFloat
    let delay: CGFloat
    let duration: CGFloat
    let damping: CGFloat
    let velocity: CGFloat
    let rotate: CGFloat
}

extension SpringAnimationProperties {
    static func getRandomInstance() -> SpringAnimationProperties {
        SpringAnimationProperties(
            animation: SpringAnimationData.animations.randomElement()?.rawValue ?? Spring.AnimationCurve.EaseIn.rawValue,
            curve: SpringAnimationData.animationCurves.randomElement()?.rawValue ?? Spring.AnimationCurve.EaseIn.rawValue,
            force: CGFloat.random(in: 0...2),
            delay: CGFloat.random(in: 0...0.7),
            duration: CGFloat.random(in: 1...2),
            damping: CGFloat.random(in: 0...3),
            velocity: CGFloat.random(in: 0...2),
            rotate: CGFloat.random(in: 0...1)
        )
    }
}
