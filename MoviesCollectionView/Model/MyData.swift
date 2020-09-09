import Foundation
class BanerModel {
    var image = ""
    
    init(image: String){
        self.image = image
    }
}
class ListModel {
    var image = ""
    var name = ""
    
    init(image: String, name: String){
        self.image = image
        self.name = name
    }
}
class SectionModel {
    var item1 = [BanerModel?]()
    var item2 = [ListModel?]()
    
    init(item1: [BanerModel?], item2: [ListModel?]){
        self.item1 = item1
        self.item2 = item2
    }
    class func getList() -> [SectionModel]{
        return [
            SectionModel(item1: [
                BanerModel(image: "icon_avatar"),
            ],
                         item2: [
                ListModel(image: "icon_avenger", name: "Biệt đội siêu anh hùng"),
                ListModel(image: "icon_hunter", name: "Giờ săn đã điểm"),
                ListModel(image: "icon_kong", name: "Đại chiến hành tinh khỉ"),
                ListModel(image: "icon_koruko", name: "Kuroko - Tuyển thủ vô hình"),
                ListModel(image: "icon_shazam", name: "Shazam"),
                ListModel(image: "icon_thor", name: "Thoe - Tận thê Ragnarok"),
                ListModel(image: "icon_troisangroi", name: "Trời sáng rồi , ta ngủ đi thôi"),
                ListModel(image: "icon_blackpanther", name: "Chiến binh báo đen"),
                ListModel(image: "icon_glogila", name: "Chúa tể Godzilla"),
                ListModel(image: "icon_ironman", name: "Người sắt 2"),
                ListModel(image: "icon_spiderman", name: "Người nhện xa nhà"),
                ListModel(image: "icon_swordatonline", name: "Ranh giới hư ảo"),
                ListModel(image: "icon_wonderwomen", name: "Nữ thần chiến binh"),
                ListModel(image: "icon_troisangroi", name: "Trời sáng rồi , ta ngủ đi thôi"),
                
            ])
        ]
    }
}
