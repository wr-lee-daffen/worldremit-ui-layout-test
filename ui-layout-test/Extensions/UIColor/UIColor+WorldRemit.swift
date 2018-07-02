import UIKit

public extension UIColor
{
    public struct WorldRemitColors
    {
        public let azure: UIColor = UIColor(red: 25.0/255.0, green: 175.0/255.0, blue: 250.0/255.0, alpha: 1.0)
        public let booger: UIColor = UIColor(red: 155.0/255.0, green: 205.0/255.0, blue: 70.0/255.0, alpha: 1.0)
        public let yellow: UIColor = UIColor(red: 254.0/255.0, green: 221.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        public let orange: UIColor = UIColor(red: 252.0/255.0, green: 131.0/255.0, blue: 25.0/255.0, alpha: 1.0)

        public let faintGray: UIColor = UIColor(red: 249.0/255.0, green: 249.0/255.0, blue: 249.0/255.0, alpha: 1.0)
        public let fainterGray: UIColor = UIColor(red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, alpha: 1.0)

        public var darkGrayBlue: UIColor = UIColor(red: 47.0/255.0, green: 70.0/255.0, blue: 98.0/255.0, alpha: 1.0)
        public let darkGrayBlue5AsSolidColor: UIColor = UIColor(red: 244.0/255.0, green: 246.0/255.0, blue: 247.0/255.0, alpha: 1.0)
        public let darkGrayBlue60AsSolidColor: UIColor = UIColor(red: 130.0/255.0, green: 143.0/255.0, blue: 161.0/255.0, alpha: 1.0)
        public let secondaryRed: UIColor = UIColor(red: 255.0/255.0, green: 57.0/255.0, blue: 102.0/255.0, alpha: 1.0)

        public let disabled: UIColor = UIColor(red: 195/255.0, green: 227.0/255.0, blue: 160.0/255.0, alpha: 1.0)

        public let mainBackgroundColor: UIColor = try! UIColor(rgbaString: "#F6F6F6")
        public let mainTitleTextColor: UIColor = try! UIColor(rgbaString: "#333333")
        public let secondaryTextColor: UIColor = try! UIColor(rgbaString: "#9a9a9a")
        public let formSeparatorColor: UIColor = try! UIColor(rgbaString: "#dddddd")

        public let formInputCellSelectedColor: UIColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        public let formInputCellErrorLabelColor: UIColor = try! UIColor(rgbaString: "#ed1c24")
        public let formInputCellErrorBorderColor: UIColor = try! UIColor(rgbaString: "#ed1c24")
        public let formInputCellErrorFieldBackgroundColor: UIColor = try! UIColor(rgbaString: "#fef3f4")
        public let formInputCellPlaceholderTextColor: UIColor = try! UIColor(rgbaString: "#bbbac2")

        public let blueColor: UIColor = try! UIColor(rgbaString: "#25aae1")
        public let pressedBlueColor: UIColor = try! UIColor(rgbaString: "#4a9abb")
        public let greenColor: UIColor = try! UIColor(rgbaString: "#86c63f")
        public let pressedGreenColor: UIColor = try! UIColor(rgbaString: "#84aa59")

        public let separatorBackgroundColor: UIColor = UIColor.gray
        public let unavailableButtonBorderColor: UIColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 0.2)

        public lazy var darkerSecondaryTextColor: UIColor = {
            return secondaryTextColor.darker()
        }()

        public lazy var darkGrayBlue5: UIColor = {
            return darkGrayBlue.withAlphaComponent(0.05)
        }()

        public lazy var darkGrayBlue10: UIColor = {
            return darkGrayBlue.withAlphaComponent(0.1)
        }()

        public lazy var darkGrayBlue20: UIColor = {
            return darkGrayBlue.withAlphaComponent(0.2)
        }()

        public lazy var darkGrayBlue30: UIColor = {
            return darkGrayBlue.withAlphaComponent(0.3)
        }()

        public lazy var darkGrayBlue40: UIColor = {
            return darkGrayBlue.withAlphaComponent(0.4)
        }()

        public lazy var darkGrayBlue60: UIColor = {
            return darkGrayBlue.withAlphaComponent(0.6)
        }()
    }

    public static let worldRemit: WorldRemitColors = WorldRemitColors()
}
