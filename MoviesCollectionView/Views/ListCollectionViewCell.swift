import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.clipsToBounds = true
        imageview.layer.borderWidth = 0.5
        imageview.image = UIImage(named: "icon_balckmass")
        imageview.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Black Mass"
        label.textColor = .gray
        label.font = .boldSystemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var data: ListModel! {
        didSet {
            fillData()
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUpconstraints()
    }
    func setUpUI(){
        self.addSubview(imageView)
        self.addSubview(nameLabel)
    }
    func setUpconstraints(){
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            nameLabel.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 10),
            nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func fillData(){
        if data == nil {return}
           
        imageView.image = UIImage(named: data.image)
        nameLabel.text = data.name
    }
}
