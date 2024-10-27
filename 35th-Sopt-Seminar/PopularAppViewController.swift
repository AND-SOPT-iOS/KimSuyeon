//
//  PopularAppViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/26/24.
//

import UIKit

final class PopularAppViewController: UIViewController {
    
    private let rootView = PopularAppView()
    
    override func loadView() {
        super.loadView()
        self.view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        register()
        setDelegate()
    }
    
    private func register() {
        rootView.tableView.register(
            PopularAppTableViewCell.self,
            forCellReuseIdentifier: PopularAppTableViewCell.identifier
        )
    }
    
    private func setDelegate() {
        rootView.tableView.delegate = self
        rootView.tableView.dataSource = self
    }
    
}

extension PopularAppViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
}

extension PopularAppViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rootView.appList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: PopularAppTableViewCell.identifier,
            for: indexPath
        ) as? PopularAppTableViewCell else { return UITableViewCell() }
        cell.dataBind(rootView.appList[indexPath.row])
        return cell
    }
}
