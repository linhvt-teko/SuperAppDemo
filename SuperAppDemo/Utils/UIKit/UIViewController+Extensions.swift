//
//  UIViewController+Extensions.swift
//  iCheckSocial
//
//  Created by ThanhBui on 5/14/20.
//  Copyright © 2020 iCheck. All rights reserved.
//

import Foundation

import UIKit

extension UIViewController {
    func add(childViewController viewController: UIViewController, sourceView:UIView ) {
        addChild(viewController)
        viewController.view.frame = CGRect.init(origin: .zero, size: sourceView.frame.size)
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        viewController.didMove(toParent: self)
        UIView.transition(with: sourceView, duration: 0.2, options: [.transitionCrossDissolve], animations: {
            sourceView.addSubview(viewController.view)
        }, completion: { _ in
            
        })
    }
    
    func addWithAnimation(childViewController viewController: UIViewController, sourceView:UIView, fromRight: Bool = true) {
        addChild(viewController)
        viewController.view.frame = sourceView.bounds
        viewController.view.frame.origin.x = fromRight ? UIScreen.main.bounds.width : -UIScreen.main.bounds.width
        viewController.view.alpha = 0
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        viewController.didMove(toParent: self)
        sourceView.addSubview(viewController.view)
        
        UIView.animate(withDuration: 0.3) {
            viewController.view.frame.origin.x = 0
            viewController.view.alpha = 1
        }
    }
    
    func addInScrollView(childViewController viewController: UIViewController, scrollView:UIView, page : CGFloat ) {
        addChild(viewController)
        viewController.view.frame = CGRect(x: 0, y: 0, width: scrollView.frame.size.width / page, height: scrollView.frame.size.height)
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        viewController.didMove(toParent: self)
        UIView.transition(with: scrollView, duration: 0.2, options: [.transitionCrossDissolve], animations: {
            scrollView.addSubview(viewController.view)
        }, completion: { _ in
            
        })
    }
    
    func remove(childViewController viewController: UIViewController) {
        viewController.willMove(toParent: self)
        viewController.view.removeFromSuperview()
        viewController.removeFromParent()
    }
    
    func removeWithAnimation(childViewController viewController: UIViewController, fromRight: Bool = true) {
        UIView.animate(withDuration: 0.3, animations: {
            viewController.view.frame.origin.x = fromRight ? UIScreen.main.bounds.width : -UIScreen.main.bounds.width
            viewController.view.alpha = 0
        }) { (_) in
            self.remove(childViewController: viewController)
        }
    }
    
    class func top(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return top(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return top(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return top(controller: presented)
        }
        return controller
    }
    
}

extension UIViewController {
    func parentViewController(ofClass: AnyClass) -> UIViewController? {
        guard let parent = self.parent else { return nil }
        
        if parent.isKind(of: ofClass) {
            return parent
        }
        
        return parent.parentViewController(ofClass: ofClass)
    }
    
    func backToViewController(ofClass: AnyClass) {
        guard let parent = self.parentViewController(ofClass: ofClass) else { return }
        
        parent.children.forEach({ childVC in
            parent.removeWithAnimation(childViewController: childVC)
        })
    }
}

extension UIViewController {
    func presentViewController(_ viewController: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        if UIDevice.current.userInterfaceIdiom == .pad {
            if let popoverController = viewController.popoverPresentationController {
                popoverController.sourceView = self.view
                popoverController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
                popoverController.permittedArrowDirections = []
            }
        }
        self.present(viewController, animated: flag, completion: completion)
    }
}

//MARK: - Date picker
extension UIViewController {
	func showDatePicker(_ currentDate: Date? = Date(), datePickerMode: UIDatePicker.Mode = .date, format: String? = nil, minDate: Date? = nil, maxDate: Date? = nil, onComplete: ((String) -> Void)?) {
        let datePicker = UIDatePicker()
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.datePickerMode = datePickerMode
		if #available(iOS 13.4, *) {
			datePicker.preferredDatePickerStyle = .wheels
		}
        datePicker.maximumDate = maxDate
        datePicker.minimumDate = minDate
        datePicker.date = currentDate ?? Date()
        
        let actionSheet = UIAlertController(title: "ICText.pickTime", message: nil, preferredStyle: .actionSheet)
        
        actionSheet.view.addSubview(datePicker)
        datePicker.snp.makeConstraints { (make) in
			make.top.equalTo(actionSheet.view.snp_top).offset(44)
			make.leading.trailing.equalTo(actionSheet.view)
			make.height.equalTo(150)
        }
        
        let selectAction = UIAlertAction(title: "ICText.confirm", style: .default) { (_) in
            let date = Date.dateString(from: datePicker.date, format: format)
            onComplete?(date ?? "")
        }
        
        actionSheet.addAction(selectAction)
        
        let cancelAction = UIAlertAction(title: "ICText.skip", style: .cancel, handler: nil)
        actionSheet.addAction(cancelAction)
        
        let height:NSLayoutConstraint = NSLayoutConstraint(item: actionSheet.view!, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 57 + 12 + 57 + 44 + 150)
        actionSheet.view.addConstraint(height)
        
        if let popoverController = actionSheet.popoverPresentationController {
          popoverController.sourceView = self.view
          popoverController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
          popoverController.permittedArrowDirections = []
        }
        
        present(actionSheet, animated: true, completion: nil)
    }
}

extension UIViewController {
    /// Call this once to dismiss open keyboards by tapping anywhere in the view controller
    func setupHideKeyboardOnTap() {
        self.view.addGestureRecognizer(self.endEditingRecognizer())
        self.navigationController?.navigationBar.addGestureRecognizer(self.endEditingRecognizer())
    }

    /// Dismisses the keyboard from self.view
    private func endEditingRecognizer() -> UIGestureRecognizer {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(self.view.endEditing(_:)))
        tap.cancelsTouchesInView = false
        return tap
    }
}
