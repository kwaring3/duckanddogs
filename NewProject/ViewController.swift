//
//  ViewController.swift
//  NewProject
//
//  Created by Kevin Waring on 1/28/19.
//  Copyright © 2019 Kevin Waring. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var cat: UIButton!
    @IBOutlet weak var duck: UIImageView!
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
       animator.fractionComplete = CGFloat(sender.value)
    }
    @IBAction func imageFlip(_ sender: UIButton) {
        if cat.imageView?.image == UIImage(named: "cat") {
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.cat.setImage(UIImage(named: "dog"), for: .normal)
                self.imageLabel.text = "dog"
            })
        }else {
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.cat.setImage(UIImage(named: "cat"), for: .normal)
                self.imageLabel.text = "cat"
            })
        }
    }
    }
    


