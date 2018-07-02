import UIKit

public enum ColorInitializationError: Error
{
    case hexValueInvalid(String)
    case hexValueScanError(String)
}

public extension UIColor
{
    convenience init(rgbaString rgba: String) throws
    {
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        var alpha: CGFloat = 1.0

        if rgba.hasPrefix("#")
        {
            let index   = String.Index(encodedOffset: 1)
            let hex     = String(rgba[index...])
            let scanner = Scanner(string: hex)
            var hexValue: CUnsignedLongLong = 0

            if scanner.scanHexInt64(&hexValue)
            {
                switch (hex.count)
                {
                case 3:
                    red   = CGFloat((hexValue & 0xF00) >> 8)       / 15.0
                    green = CGFloat((hexValue & 0x0F0) >> 4)       / 15.0
                    blue  = CGFloat(hexValue & 0x00F)              / 15.0
                case 4:
                    red   = CGFloat((hexValue & 0xF000) >> 12)     / 15.0
                    green = CGFloat((hexValue & 0x0F00) >> 8)      / 15.0
                    blue  = CGFloat((hexValue & 0x00F0) >> 4)      / 15.0
                    alpha = CGFloat(hexValue & 0x000F)             / 15.0
                case 6:
                    red   = CGFloat((hexValue & 0xFF0000) >> 16)   / 255.0
                    green = CGFloat((hexValue & 0x00FF00) >> 8)    / 255.0
                    blue  = CGFloat(hexValue & 0x0000FF)           / 255.0
                case 8:
                    red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                    green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                    blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                    alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
                default:
                    throw ColorInitializationError.hexValueInvalid("Invalid RGB string, number of characters after '#' should be either 3, 4, 6 or 8")
                }
            }
            else
            {
                throw ColorInitializationError.hexValueScanError("Scan hex error")
            }
        }
        else
        {
            throw ColorInitializationError.hexValueInvalid("Invalid RGB string, missing '#' as prefix")
        }

        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
}
