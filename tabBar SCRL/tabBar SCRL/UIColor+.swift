//
//  Color.swift
//  Slide Scanner
//
//  Created by Usman Mughal on 20/10/2022.
//
import UIKit

typealias SSColor = UIColor
extension SSColor {
    static var appGradientColor: UIColor = .black//DEFAULT
    class func setAppGradientColor(color: UIColor) {
        appGradientColor = color
    }
    class func getAppGradientColor() -> UIColor {
        return appGradientColor
    }
    static func bye(r: Int, g: Int, b: Int, a: CGFloat = 1) -> UIColor {
        let d = CGFloat(255)
        return UIColor(red: CGFloat(r) / d, green: CGFloat(g) / d, blue: CGFloat(b) / d, alpha: a)
    }
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    private convenience init(_ rgb: Int) {
        self.init(
            red: CGFloat((rgb >> 16) & 0xFF),
            green: CGFloat((rgb >> 8) & 0xFF),
            blue: CGFloat(rgb & 0xFF)
        )
    }
    static let slideScannerGradientRed = UIColor(named: "SlideScannerGradientRed")!
    static let slideScannerWhite = UIColor(named: "SlideScannerWhite")!
    static let slideScannerBack = UIColor(named: "SlideScannerBack")!
    static let slideScannerLight = UIColor(named: "SlideScannerLight")!
    static let slideScannerLightGray = UIColor(named: "SlideScannerLightGray")!
    static let slideScannerDarkGray = UIColor(named: "SlideScannerDarkGray")!
    static let slideScannerDarkOrange = UIColor(named: "SlideScannerDarkOrage")!
    static let slideScannerLightOrange = UIColor(named: "SlideScannerLightOrange")!
    static let slideScannerYellow = UIColor(named: "SlideScannerYellow")!
    static let slideScannerGreen = UIColor(named: "SlideScannerGreen")!
    static let slideScannerLightSky = UIColor(named: "SlideScannerLightSky")!
    static let slideScannerDarkSky = UIColor(named: "SlideScannerDarkSky")!
    static let slideScannerLightPurple = UIColor(named: "SlideScannerLightPurple")!
    static let slideScannerDarkPurple = UIColor(named: "SlideScannerDarkPurple")!
    static let slideScannerDarkPink = UIColor(named: "SlideScannerDarkPink")!
    static let slideScannerMagenta = UIColor(named: "SlideScannerMagenta")!
    static let slideScannerLightBlue = UIColor(named: "SlideScannerLightBlue")!
    static let slideScannerDarkBlue = UIColor(named: "SlideScannerDarkBlue")!
    static let slideScannerRed = UIColor(named: "SlideScannerRed")!
    convenience init?(named: String) {
        self.init(named: named, in: .resourceBundle, compatibleWith: nil)
    }
}
