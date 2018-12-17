import PlaygroundSupport
import UIKit

public func prepareIpadWindow(page: PlaygroundPage, root: UIViewController, scale: CGFloat = 0.75) -> UIWindow {
    let ipadDimensions = CGSize(width: 1024, height: 768)
    let window = UIWindow(frame: CGRect(origin: .zero, size: ipadDimensions))

    root.preferredContentSize = ipadDimensions
    root.view.transform = CGAffineTransform(scaleX: scale, y: scale)
    root.view.frame.origin = .zero

    window.autoresizingMask = []
    window.translatesAutoresizingMaskIntoConstraints = true
    window.frame.size = CGSize(
        width: ipadDimensions.width * scale,
        height: ipadDimensions.height * scale
    )
    window.rootViewController = root
    window.makeKeyAndVisible()
    page.liveView = window

    return window
}
