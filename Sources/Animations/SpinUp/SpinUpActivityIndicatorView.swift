// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class SpinUpActivityIndicatorView: ActivityIndicatorView {
    private lazy var spinUp: SpinUpView = {
        let startView = SpinUpView(frame: .zero)
        startView.scale(to: frame.size)
        //The background color for this custom activity indicator should always be solid
        //Otherwise, the native ActivityIndicatorView animation will be visible
        startView.backgroundColor = UIColor(red: 0.22, green: 0.282, blue: 0.353, alpha: 1)
        return startView
    }()

    override var timeline: Timeline? {
        return SpinUpTimeline(view: spinUp, duration: 1, repeatCount: .greatestFiniteMagnitude)
    }
    
    override func createView() -> UIView {
        return spinUp
    }
}