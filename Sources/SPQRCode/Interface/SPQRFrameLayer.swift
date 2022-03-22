// The MIT License (MIT)
// Copyright © 2022 Sparrow Code (hello@sparrowcode.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.


import UIKit

class SPQRFrameLayer: CAShapeLayer {
    
    // MARK: - Init
    
    override init() {
        super.init()
        strokeColor = UIColor.systemYellow.cgColor
        lineWidth = 5
        fillColor = UIColor.clear.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func action(forKey event: String) -> CAAction? {
        if event == "path" {
            let animation: CABasicAnimation = .init(keyPath: event)
            
            animation.duration = 0.3
            animation.timingFunction = CATransaction.animationTimingFunction()
            
            return animation
        }
        
        return super.action(forKey: event)
    }
    
    // MARK: - Actions
    
    func detected(with newBezierPath: UIBezierPath) {
        path = newBezierPath.cgPath
    }
    
    func update(with newBezierPath: UIBezierPath) {
        path = newBezierPath.cgPath
    }
    
    func dissapear() {
        path = nil
    }
}
