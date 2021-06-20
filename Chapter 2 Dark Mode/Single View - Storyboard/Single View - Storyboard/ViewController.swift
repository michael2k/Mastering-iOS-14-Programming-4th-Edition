//
//  ViewController.swift
//  Single View - Storyboard
//
//  Created by Michael M. Kim on 2021/06/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primaryLabel: UILabel!
    @IBOutlet weak var secondaryLabel: UILabel!
    @IBOutlet weak var tertiaryLabel: UILabel!
    @IBOutlet weak var separatorView: UIView!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        primaryLabel.textColor = UIColor.brandMikeLabel
        secondaryLabel.textColor = UIColor.brandSecondaryMikeLabel
        tertiaryLabel.textColor = UIColor.brandTertiaryMikeLabel
        
        linkButton.titleLabel?.textColor = UIColor.link
        
        separatorView.backgroundColor = UIColor.separator
        
        tableView.backgroundColor = UIColor.systemGroupedBackground
        headerImageView.image = UIImage.header
        
    }

    // Trait change
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        let interfaceAppearanceChanged = previousTraitCollection?.hasDifferentColorAppearance(comparedTo: traitCollection)
        print("Has changed: \(interfaceAppearanceChanged ?? false)")
    }

}

extension UIColor {
    static var brandLabel: UIColor {
        return UIColor(named: "brandLabel") ?? UIColor.label
    }
    static var brandSecondaryLabel: UIColor {
        return UIColor(named: "brandSecondaryLabel") ?? UIColor.label
    }
    static var brandTertiaryLabel: UIColor {
        return UIColor(named: "brandTertiaryLabel") ?? UIColor.label
    }
    static var brandMikeLabel: UIColor {
        return UIColor(named: "brandMikeLabel") ?? UIColor.label
    }
    static var brandSecondaryMikeLabel: UIColor {
        return UIColor(named: "brandSecondaryMikeLabel") ?? UIColor.label
    }
    static var brandTertiaryMikeLabel: UIColor {
        return UIColor(named: "brandTertiaryMikeLabel") ?? UIColor.label
    }
}

extension UIImage {
    static var header: UIImage {
        return UIImage(named: "header") ?? UIImage()
    }
}
