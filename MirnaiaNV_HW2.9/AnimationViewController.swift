//
//  ViewController.swift
//  MirnaiaNV_HW2.9
//
//  Created by Наталья Мирная on 10/12/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import Spring

class AnimationViewController: UIViewController {
    @IBOutlet var springView: SpringView!
    @IBOutlet var springButton: SpringButton!
    @IBOutlet var animationLabel: UILabel!
    
    var animationProperties = SpringAnimationProperties.getRandomInstance()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLabel.text = animationProperties.description
    }

    @IBAction func springAnimationButton(_ sender: SpringButton) {
        runAnimation()
        animationLabel.text = animationProperties.description
        
        animationProperties = SpringAnimationProperties.getRandomInstance()
        springButton.setTitle(animationProperties.animation, for: .normal)
    }

    private func runAnimation() {
        springView.animation = animationProperties.animation
        springView.curve = animationProperties.curve
        springView.force = animationProperties.force
        springView.delay = animationProperties.damping
        springView.duration = animationProperties.duration
        springView.damping = animationProperties.damping
        springView.velocity = animationProperties.velocity
        springView.rotate = animationProperties.rotate
        springView.animate()
    }
}
