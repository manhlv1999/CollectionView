import UIKit

class BanerCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var data: BanerModel! {
        didSet {
            fillData()
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        self.addSubview(imageView)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func fillData(){
        if data == nil {return}
        
        imageView.image = UIImage(named: data.image)
    }
}
