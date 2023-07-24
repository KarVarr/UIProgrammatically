//
//  PaymentController.swift
//  TestForITCron
//
//  Created by Karen Vardanian on 24.07.2023.
//

import UIKit
import SnapKit
import MapKit

class ProtocolFileCell: UIViewController {
    
    //    let descriptionLabel = UILabel()
    //    let removeButton = UIButton()
    //    let editButton = UIButton()
    //    let wrapper = UIView()
    //    let currentView = UIView()
    //    let contentView = UIView()
    
    
    //    let sectionModels = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
//
//
//protocol MapServiceInput: AnyObject {
//    func getNavigators(address: String) -> [MapNavigator]
//    
//}
//protocol MapServiceOutput: AnyObject {
//    func setNavigators(address: String)
//    
//}
//final class MapService {
//    private let navigators: [MapNavigatorExt]
//    private let output: MapServiceOutput?
//    
//    init(navigators: [MapNavigatorExt], output: MapServiceOutput?) {
//        self.navigators = navigators
//        self.output = output
//    }
//}
//final class GlobalService {
//    private let navigators: [MapNavigatorExt]
//    private let output: MapServiceOutput?
//    
//    init(navigators: [MapNavigatorExt], output: MapServiceOutput?) {
//        self.navigators = navigators
//        self.output = output
//    }
//}
//
//extension MapService: MapServiceInput {
//    func getNavigators(address: String) -> [MapNavigator] {
//        output?.setNavigators(address: address)
//        return navigators
//            .filter { isSchemeValid(scheme: $0.scheme ?? "") }
//            .map { MapNavigator(title: $0.title, url: $0.url(address: address)) }
//    }
//}
//
//extension GlobalService: MapServiceInput {
//    func getNavigators(address: String) -> [MapNavigator] {
//        output?.setNavigators(address: address)
//        return navigators
//            .filter { isSchemeValid(scheme: $0.scheme ?? "") }
//            .map { MapNavigator(title: $0.title, url: $0.url(address: address)) }
//    }
//}
//
//func someFunc() {
//    let mapService = MapService()
//    let globalService = GlobalService()
//    let x1 = mapService.getNavigators("test")
//    let x2 = globalService.getNavigators("test2")
//}








//    private let wrapperBackgroundColor = AppColors.cellWrapperBackground
//    private let wrapperShadowColor = AppColors.onlyblack.cgColor
//    private let wrapperShadowOffset = CGSize(width: 0.0, height: 4.0)
//    private let wrapperShadowOpacity: Float = 0.07
//    private let wrapperShadowRadius: CGFloat = 15
//    private let wrapperCornerRadius: CGFloat = 8
//
//    private lazy var wrapper: UIView = {
//        let wrapper = UIView()
//        wrapper.backgroundColor = wrapperBackgroundColor
//        wrapper.layer.masksToBounds = false
//        wrapper.layer.cornerRadius = wrapperCornerRadius
//
//        wrapper.applyShadow(color: wrapperShadowColor,
//                            offset: wrapperShadowOffset,
//                            opacity: wrapperShadowOpacity,
//                            radius: wrapperShadowRadius)
//
//        return wrapper
//    }()
//
//    extension UIView {
//        func applyShadow(color: CGColor, offset: CGSize, opacity: Float, radius: CGFloat) {
//            layer.shadowColor = color
//            layer.shadowOffset = offset
//            layer.shadowOpacity = opacity
//            layer.shadowRadius = radius
//        }
//    }






//class DownloadController: UIViewController {
//
//    let sectionModels = [Int]()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//}
//    "1. Какие ошибки есть в коде? Что можно улучшить? На этом листе единая задача."
//
//extension PaymentController : UITableViewDataSource, UITableViewDelegate {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return sectionModels.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if sectionModels.isEmpty {
//            return createStubCell(text: "Здесь будут отображаться ваши платежи \nза услуги и приемы в клинике.")
//        } else {
//            let  cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PaymentTableViewCell
//            let item = sectionModels[indexPath.section].sectionValue[indexPath.row]
//            cell.set(item: item)
//            cell.output = self
//            return cell
//        }
//    }
//
//}
//
//
//extension DownloadController: UITableViewDataSource, UITableViewDelegate {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return sectionModels.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            if sectionModels.isEmpty {
//                return createStubCell(text: "Файлов нет.")
//            } else {
//                let  cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PaymentTableViewCell
//                let item = sectionModels[indexPath.section].sectionValue[indexPath.row]
//                cell.set(item: item)
//                cell.output = self
//                return cell
//            }
//
//
//    }
//
//
//    private func createStubCell(text: String) -> UITableViewCell {
//        let cell = UITableViewCell()
//        cell.backgroundColor = AppColors.mainBackground
//        cell.textLabel?.attributedText = NSAttributedString(string: text, attributes: [NSAttributedString.Key.font: AppLayout.appFont(16, weight: .regular), NSAttributedString.Key.foregroundColor: AppColors.mainGrayForStub])
//        cell.textLabel?.textAlignment = .center
//        cell.textLabel?.numberOfLines = 0
//        return cell
//    }
//
//
//
//extension ProtocolFileCell {
//    func setupUI() {
//        contentView.addSubview(wrapper)
//        wrapper.snp.makeConstraints {
//            $0.edges.equalToSuperview()
//                .inset(UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16))
//        }
//        wrapper.addSubview(currentView)
//        currentView.snp.makeConstraints {
//            $0.edges.equalToSuperview()
//        }
//
//        currentView.addSubview(descriptionLabel)
//        descriptionLabel.snp.makeConstraints {
//            $0.top.left.right.equalToSuperview()
//                .inset(UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16))
//        }
//        currentView.addSubview(editButton)
//        editButton.snp.makeConstraints {
//            $0.left.equalToSuperview().offset(16)
//            $0.bottom.equalToSuperview().inset(16)
//        }
//        currentView.addSubview(removeButton)
//        removeButton.snp.makeConstraints {
//            $0.top.equalTo(descriptionLabel.snp.bottom).offset(12)
//            $0.left.equalTo(editButton.snp.right).offset(16)
//
//        }
//    }
//}
//
//extension ProtocolFileCell {
//    func setupUI2() {
//        contentView.addSubview(wrapper)
//        wrapper.snp.makeConstraints {
//            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16))
//        }
//        wrapper.addSubview(currentView)
//        currentView.snp.makeConstraints {
//            $0.edges.equalToSuperview()
//        }
//        currentView.addSubview(descriptionLabel)
//        descriptionLabel.snp.makeConstraints {
//            $0.top.left.right.equalToSuperview().inset(UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16))
//        }
//        currentView.addSubview(editButton)
//        editButton.snp.makeConstraints {
//            $0.left.equalToSuperview().offset(16)
//            $0.bottom.equalToSuperview().inset(16)
//        }
//        currentView.addSubview(removeButton)
//        removeButton.snp.makeConstraints {
//            $0.top.equalTo(descriptionLabel.snp.bottom).offset(12)
//            $0.left.equalTo(editButton.snp.right).offset(16)
//        }
//    }
//}

