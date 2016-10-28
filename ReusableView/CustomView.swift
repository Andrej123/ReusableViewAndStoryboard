//
//  CustomView.swift
//  ReusableView
//
//  Created by Andrej Krizmancic on 28/10/2016.
//  Copyright © 2016 Andrej Krizmancic. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {

    fileprivate let nibName = "CustomView"
    fileprivate var view: UIView!

    func xibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(view)
    }

    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self) )
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
}


