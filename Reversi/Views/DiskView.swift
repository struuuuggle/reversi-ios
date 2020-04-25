import UIKit

class DiskView: UIView {
    /// このビューが表示するディスクの色を決定します。
    var disk: Disk = .dark {
        didSet { setNeedsDisplay() }
    }
    
    /// Interface Builder からディスクの色を設定するためのプロパティです。 `"dark"` か `"light"` の文字列を設定します。
    @IBInspectable var name: String {
        get { disk.name }
        set { disk = .init(name: newValue) }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }

    private func setUp() {
        backgroundColor = .clear
        isUserInteractionEnabled = false
    }

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setFillColor(disk.cgColor)
        context.fillEllipse(in: bounds)
    }
}
