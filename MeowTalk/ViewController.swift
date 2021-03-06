//
//  ViewController.swift
//  MeowTalk
//
//  Created by Ray on 3/23/15.
//  Copyright (c) 2015 RayPS. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.cornerRadius = 8
    }
}


class meowButton: UIButton {

    var player: AVAudioPlayer

    @IBInspectable public var soundID: String! {
        didSet {
            do {
                let url = Bundle.main.url(forResource: soundID, withExtension: "wav")!
                player = try AVAudioPlayer(contentsOf: url)
            } catch {
                print("error")
            }
        }
    }

    required init?(coder aDecoder: NSCoder) {
        player = AVAudioPlayer()
        super.init(coder: aDecoder)
        addTarget(self, action: #selector(self.down), for: .touchDown)
        addTarget(self, action: #selector(self.up), for: .touchUpInside)
        addTarget(self, action: #selector(self.up), for: .touchUpOutside)
    }


    @objc func down() {
        UIView.animate(withDuration: 0.1, delay: 0, options: .allowUserInteraction, animations: {
            self.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        }, completion: nil)
//        player.currentTime = 0 //😂😂😂
        player.play()
        Haptic.impact(.light).generate()
    }

    @objc func up() {
        UIView.animate(withDuration: 0.25, delay: 0, options: .allowUserInteraction, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil)
    }
}


public enum Haptic {
    case impact(UIImpactFeedbackStyle)
    case notification(UINotificationFeedbackType)
    case selection

    // trigger
    public func generate() {
        switch self {
        case .impact(let style):
            let generator = UIImpactFeedbackGenerator(style: style)
            generator.prepare()
            generator.impactOccurred()
        case .notification(let type):
            let generator = UINotificationFeedbackGenerator()
            generator.prepare()
            generator.notificationOccurred(type)
        case .selection:
            let generator = UISelectionFeedbackGenerator()
            generator.prepare()
            generator.selectionChanged()
        }
    }
}
