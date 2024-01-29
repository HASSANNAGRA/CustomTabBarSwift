//
//  PTTabBarButtonItem.swift
//  PTR
//
//  Created by Hussein AlRyalat on 4/7/19.
//  Copyright © 2019 SketchMe. All rights reserved.
//

import UIKit


public class PTBarButton: UIButton {
    
    var selectedColor: UIColor! = .white {
        didSet {
            reloadApperance()
        }
    }
    
    var unselectedColor: UIColor! = UIColor.lightGray {
        didSet {
            reloadApperance()
        }
    }
    
    init(forItem item: UITabBarItem) {
        super.init(frame: .zero)
        setImage(item.image, for: .normal)
    }
    
    init(image: UIImage){
        super.init(frame: .zero)
        setImage(image, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override public var isSelected: Bool {
        didSet {
            reloadApperance()
        }
    }
    
    func reloadApperance(){
        self.tintColor = isSelected ? selectedColor : unselectedColor
    }
}
