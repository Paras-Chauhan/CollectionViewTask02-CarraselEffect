

import UIKit

class MainViewController: UIViewController {
    
    //Mark:- Outlets
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var CollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        layoutAttributes()
    }
}

func layoutAttributes()
{
     let layout = UPCarouselFlowLayout()
    
    layout.itemSize = CGSize(width:300,height:300)
    layout.scrollDirection = .horizontal
    layout.sideItemScale = 0.8
    layout.sideItemAlpha = 1.0
    layout.spacingMode = .fixed(spacing: 5.0)

}

extension MainViewController : UICollectionViewDataSource{
   
   func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InterestCell", for: indexPath) as! CollectionCell
     
        return cell
    }
}


