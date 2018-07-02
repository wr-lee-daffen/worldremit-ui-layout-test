import UIKit

public extension UIFont
{
    public struct WorldRemitTitleFonts
    {
        let large: UIFont = UIFont.boldSystemFont(ofSize: 20)
        let medium: UIFont = UIFont.boldSystemFont(ofSize: 16)
        let small: UIFont = UIFont.boldSystemFont(ofSize: 12)
    }

    public struct WorldRemitBodyFonts
    {
        let large: UIFont = UIFont.systemFont(ofSize: 18)
        let medium: UIFont = UIFont.systemFont(ofSize: 14)
        let small: UIFont = UIFont.systemFont(ofSize: 11)
    }

    public struct WorldRemitButtonFonts
    {
        let large: UIFont = UIFont.systemFont(ofSize: 18)
        let medium: UIFont = UIFont.systemFont(ofSize: 14)
        let small: UIFont = UIFont.systemFont(ofSize: 11)
    }

    public struct WorldRemitFonts
    {
        let title: WorldRemitTitleFonts = WorldRemitTitleFonts()
        let body: WorldRemitBodyFonts = WorldRemitBodyFonts()
        let button: WorldRemitButtonFonts = WorldRemitButtonFonts()
    }

    public static let worldRemit: WorldRemitFonts = WorldRemitFonts()
}
