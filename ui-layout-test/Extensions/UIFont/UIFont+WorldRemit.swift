import UIKit

public extension UIFont
{
    public struct WorldRemitFonts
    {
        let small: UIFont = UIFont.systemFont(ofSize: smallSize)
        let headline: UIFont = UIFont.regularFontOfSize(headlineSize)
        let subheader: UIFont = UIFont.regularFontOfSize(subheaderSize)
        let input: UIFont = lightFontOfSize(inputSize)
        let error: UIFont = UIFont.regularFontOfSize(errorSize)
        let formLabel: UIFont = boldFontOfSize(formSize)
        let buttonLabel: UIFont = UIFont.regularFontOfSize(buttonSize)
        let cellTitle: UIFont = UIFont.regularFontOfSize(16)
    }

    public static let worldRemit: WorldRemitFonts = WorldRemitFonts()
}

private extension UIFont
{
    static let headlineSize: CGFloat = 24.0
    static let subheaderSize: CGFloat = 16.0
    static let titleSize: CGFloat = 20.0

    static let buttonSize: CGFloat = 16.0
    static let inputSize: CGFloat = 20.0
    static let formSize: CGFloat = 18.0
    static let errorSize: CGFloat = 15.0

    static let smallSize: CGFloat = 13.0
}

private extension UIFont
{
    class func mediumFontOfSize(_ size: CGFloat) -> UIFont
    {
        return UIFont.systemFont(ofSize: size, weight: .medium)
    }

    class func lightFontOfSize(_ size: CGFloat) -> UIFont
    {
        return UIFont.systemFont(ofSize: size, weight: .light)
    }

    class func boldFontOfSize(_ size: CGFloat) -> UIFont
    {
        return UIFont.systemFont(ofSize: size, weight: .bold)
    }

    class func semiboldFontOfSize(_ size: CGFloat) -> UIFont
    {
        return UIFont.systemFont(ofSize: size, weight: .semibold)
    }

    class func thinFontOfSize(_ size: CGFloat) -> UIFont
    {
        return UIFont.systemFont(ofSize: size, weight: .thin)
    }

    class func regularFontOfSize(_ size: CGFloat) -> UIFont
    {
        return UIFont.systemFont(ofSize: size, weight: .regular)
    }
}
