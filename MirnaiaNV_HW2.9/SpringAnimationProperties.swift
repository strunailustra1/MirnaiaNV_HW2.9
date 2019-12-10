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

extension SpringAnimationProperties: CustomStringConvertible {
    var description: String {
        "animation: \(animation)\n" +
        "curve: \(curve)\n" +
        String(format: "force: %.2f\n", force) +
        String(format: "delay: %.2f\n", delay) +
        String(format: "duration: %.2f\n", duration) +
        String(format: "damping: %.2f\n", damping) +
        String(format: "velocity: %.2f\n", velocity) +
        String(format: "rotate: %.2f", rotate)
    }
}

extension SpringAnimationProperties {
    static func getRandomInstance() -> SpringAnimationProperties {
        SpringAnimationProperties(
            animation: SpringAnimationData.animations.randomElement()?.rawValue ?? Spring.AnimationCurve.EaseIn.rawValue,
            curve: SpringAnimationData.animationCurves.randomElement()?.rawValue ?? Spring.AnimationCurve.EaseIn.rawValue,
            force: CGFloat.random(in: 0...2),
            delay: CGFloat.random(in: 0...0.3),
            duration: CGFloat.random(in: 0.5...1.5),
            damping: CGFloat.random(in: 0...3),
            velocity: CGFloat.random(in: 0...2),
            rotate: CGFloat.random(in: 0...1)
        )
    }
}
