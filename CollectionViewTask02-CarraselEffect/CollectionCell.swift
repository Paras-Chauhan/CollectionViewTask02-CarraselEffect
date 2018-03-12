

import UIKit

class CollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var blurView: UIView!
    
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        DispatchQueue.main.async {
            self.featuredImageView.layer.shadowColor = UIColor.gray.cgColor
            self.featuredImageView.layer.shadowOpacity = 1.0
            self.featuredImageView.layer.shadowOffset = .zero
            self.featuredImageView.layer.shadowPath = UIBezierPath(rect: self.featuredImageView.bounds).cgPath
            self.featuredImageView.layer.shouldRasterize = true
       }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 20.0
        self.clipsToBounds = true
    }
    
}
