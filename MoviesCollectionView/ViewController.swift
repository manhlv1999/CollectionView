import UIKit

class ViewController: UIViewController {
    
    var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        var colectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        colectionview.backgroundColor = .white
        colectionview.register(BanerCollectionViewCell.self, forCellWithReuseIdentifier: "BanerCollectionViewCell")
        colectionview.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: "ListCollectionViewCell")
        colectionview.translatesAutoresizingMaskIntoConstraints = false
        return colectionview
    }()
    var datasource = [SectionModel]() {
        didSet {
            collectionView.reloadData()
        }
    }
    override func viewDidLoad() {
        self.title = "Movies"
        super.viewDidLoad()
        setUpUI()
        setUpConstraints()
        datasource = SectionModel.getList()
    }
    func setUpUI(){
        self.view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            collectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
        ])
    }
}
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let inforMoviesVC = MoviesInforViewController()
        self.navigationController?.pushViewController(inforMoviesVC, animated: true)
    }
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return datasource[section].item2.count
    }    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BanerCollectionViewCell", for: indexPath) as! BanerCollectionViewCell
            cell.data = datasource[indexPath.section].item1[indexPath.row]
            return cell
        }
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCollectionViewCell", for: indexPath) as! ListCollectionViewCell
            cell.data = datasource[indexPath.section].item2[indexPath.row]
            return cell
    }
  
}
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        if indexPath.row == 0 {
            return CGSize(width: screenWidth, height: 200)
        }
        return CGSize(width: ceil(screenWidth - 10)/3 - 1, height: 230)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
