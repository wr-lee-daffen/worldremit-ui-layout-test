import UIKit

struct ButtonConfiguration
{
    let font: UIFont
    let backgroundColor: UIColor
    let textColor: UIColor
    let borderColor: UIColor
    let shadowColor: UIColor
}

extension ButtonConfiguration
{
    static var `default` = ButtonConfiguration(font: UIFont.systemFont(ofSize: 12),
                                               backgroundColor: UIColor.WorldRemit.azure,
                                               textColor: UIColor.white,
                                               borderColor: UIColor.WorldRemit.azure,
                                               shadowColor: UIColor.WorldRemit.azure)
}

@IBDesignable
class BaseButton: UIButton
{
    var configuration: ButtonConfiguration { return ButtonConfiguration.default }

    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.configure()
    }

    override init(frame: CGRect)
    {
        super.init(frame: frame)
        self.configure()
    }

    override func prepareForInterfaceBuilder()
    {
        super.prepareForInterfaceBuilder()
        self.configure()
    }

    private func configure()
    {
        backgroundColor = configuration.backgroundColor
        setTitleColor(configuration.textColor, for: UIControlState())
        titleLabel?.font = configuration.font

        layer.borderColor = configuration.borderColor.cgColor
        layer.borderWidth = 1

        layer.shadowColor = configuration.shadowColor.cgColor
        layer.shadowOffset = CGSize(width: 2, height: 3)
        layer.shadowOpacity = 0.7
    }

    override func layoutSubviews()
    {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / 2
    }
}

class PrimaryButton: BaseButton
{
    override var configuration: ButtonConfiguration {
        return ButtonConfiguration(font: UIFont.systemFont(ofSize: 12),
                                   backgroundColor: UIColor.WorldRemit.azure,
                                   textColor: UIColor.white,
                                   borderColor: UIColor.WorldRemit.azure,
                                   shadowColor: UIColor.WorldRemit.azure)
    }
}

class GhostButton: BaseButton
{
    override var configuration: ButtonConfiguration {
        return ButtonConfiguration(font: UIFont.systemFont(ofSize: 12),
                                   backgroundColor: UIColor.white,
                                   textColor: UIColor.black,
                                   borderColor: UIColor.lightGray,
                                   shadowColor: UIColor.clear)
    }
}

class LinkButton: BaseButton
{
    override var configuration: ButtonConfiguration {
        return ButtonConfiguration(font: UIFont.systemFont(ofSize: 12),
                                   backgroundColor: UIColor.white,
                                   textColor: UIColor.WorldRemit.azure,
                                   borderColor: UIColor.clear,
                                   shadowColor: UIColor.clear)
    }
}
