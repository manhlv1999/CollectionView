import UIKit

class MoviesInforViewController: UIViewController {
    
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.clipsToBounds = true
        //imageview.contentMode = .scaleAspectFit
        imageview.image = UIImage(named: "icon_spiderman")
        imageview.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var nameStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var nameLabel: UILabel = {
        var label = UILabel()
        label.textColor = .orange
        label.text = "Người nhện xa nhà"
        label.font = .boldSystemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    var subNameLabel: UILabel = {
        var label = UILabel()
        label.textColor = .gray
        label.font = .systemFont(ofSize: 21)
        label.text = "Spiderman far home"
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 21)
        label.text = "Tóm Tắt"
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.numberOfLines = 11
        label.font = .boldSystemFont(ofSize: 15)
        label.text = "Đêm sống còn Những tên cướp đang bị thương và chạy trốn khỏi sự săn lùng của cảnh sát. Để tránh bị bắt, chúng không vào bệnh viện mà chọn cách theo chân một bác sĩ về nhà riêng để ép buộc bác sĩ đó chữa trị cho chúng. Sau khi đột nhập vào nhà, chúng đã bắt trói và uy hiếp cả gia đình."
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpConstrainst()
    }
    func setUpUI(){
        title = "Thông tin Phim"
        view.backgroundColor = .black
        self.view.addSubview(imageView)
        self.view.addSubview(nameStackView)
        self.view.addSubview(titleLabel)
        self.view.addSubview(subTitleLabel)
        nameStackView.addArrangedSubview(nameLabel)
        nameStackView.addArrangedSubview(subNameLabel)
    }
    func setUpConstrainst(){
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 90),
            imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -600),
            
            nameStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            nameStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            nameStackView.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 20),
            
//            titleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
//            titleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
//            titleLabel.topAnchor.constraint(equalTo: self.nameStackView.bottomAnchor, constant: 20),
//
//            subTitleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
//            subTitleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
//            subTitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20),
//            subTitleLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20)
        ])
    }
}
