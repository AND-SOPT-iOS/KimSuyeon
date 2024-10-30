//
//  FinancePopularChartViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit

final class FinancePopularChartViewController: UIViewController {
    
    private let rootView = FinancePopularChartView()
    
    private let appList = FinancePopularModel.mockPopularData()
    
    override func loadView() {
        super.loadView()
        
        self.view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar()
        register()
        setDelegate()
    }
    
    func setNavigationBar() {
        self.navigationItem.title = "인기 차트"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func register() {
        rootView.tableView.register(
            FinancePopularChartTableViewCell.self,
            forCellReuseIdentifier: FinancePopularChartTableViewCell.identifier
        )
    }
    
    private func setDelegate() {
        rootView.tableView.delegate = self
        rootView.tableView.dataSource = self
    }
}

extension FinancePopularChartViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

extension FinancePopularChartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: FinancePopularChartTableViewCell.identifier,
            for: indexPath
        ) as? FinancePopularChartTableViewCell else { return UITableViewCell() }
        cell.dataBind(appList[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
}
