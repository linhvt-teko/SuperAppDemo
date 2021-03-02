//
//  UIViewController+.swift
//  SuperAppDemo
//
//  Created by linhvt on 3/2/21.
//

import UIKit

extension UIViewController {
    
    func showAlertController(message: String?) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }

}
