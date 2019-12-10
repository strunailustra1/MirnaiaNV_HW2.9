//
//  SpringAnimationData.swift
//  MirnaiaNV_HW2.9
//
//  Created by Наталья Мирная on 10/12/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import Spring

class SpringAnimationData {
    
    static let animations: [Spring.AnimationPreset] = [
        .Shake,
        .Pop,
        .Morph,
        .Squeeze,
        .Wobble,
        .Swing,
        .FlipX,
        .FlipY,
        .Fall,
        .SqueezeLeft,
        .SqueezeRight,
        .SqueezeDown,
        .SqueezeUp,
        .SlideLeft,
        .SlideRight,
        .SlideDown,
        .SlideUp,
        .FadeIn,
        .FadeOut,
        .FadeInLeft,
        .FadeInRight,
        .FadeInDown,
        .FadeInUp,
        .ZoomIn,
        .ZoomOut,
        .Flash
    ]
    
    static let animationCurves: [Spring.AnimationCurve] = [
        .EaseIn,
        .EaseOut,
        .EaseInOut,
        .Linear,
        .Spring,
        .EaseInSine,
        .EaseOutSine,
        .EaseInOutSine,
        .EaseInQuad,
        .EaseOutQuad,
        .EaseInOutQuad,
        .EaseInCubic,
        .EaseOutCubic,
        .EaseInOutCubic,
        .EaseInQuart,
        .EaseOutQuart,
        .EaseInOutQuart,
        .EaseInQuint,
        .EaseOutQuint,
        .EaseInOutQuint,
        .EaseInExpo,
        .EaseOutExpo,
        .EaseInOutExpo,
        .EaseInCirc,
        .EaseOutCirc,
        .EaseInOutCirc,
        .EaseInBack,
        .EaseOutBack,
        .EaseInOutBack
    ]
}
