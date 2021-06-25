//
//  UIScrollView+Extension.swift
//  iCheck
//
//  Created by Son Bui on 3/9/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit

extension UIScrollView {
    func scrollToView(toView: UIView, animated : Bool) {
        if let origin = toView.superview {
            let childPoint = origin.convert(toView.frame.origin, to: self)
            self.scrollRectToVisible(CGRect(x: 0, y: childPoint.y - 10, width: 1, height: self.frame.height), animated: true)
        }
    }
}

extension UITableView {
    
    func emptyBackground(_ view: UIView?) {
        self.backgroundView = view
    }
    
    func clearEmptyView() {
        self.backgroundView = nil
    }
    
    
    func dequeueCell<T> (ofType type: T.Type, indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as? T else { fatalError("\(String(describing: T.self)) hasn'r registed ")}
        return cell
    }
    
    func register<Cell: UITableViewCell> (cell: Cell.Type) {
        self.register(cell, forCellReuseIdentifier:  String(describing: cell))
    }
}

extension UICollectionView {
    func dequeueCell<T> (ofType type: T.Type, indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as! T
    }
    
    func register<T: UICollectionViewCell> (cell: T.Type) {
        self.register(cell, forCellWithReuseIdentifier: String(describing: cell))
    }
    
}


