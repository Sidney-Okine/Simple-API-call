//
//  TableViewHolder.swift
//  Perfection 4.0
//
//  Created by Sidney Okine on 11/08/2022.
//

import UIKit


class TableViewHolder: UIView {
    let tableViewCell = TableViewCell()
    var countries = [Countries]()


    lazy var Table : UITableView = {
       let table = UITableView()
        table.delegate = self
        table.dataSource = self
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        table.showsVerticalScrollIndicator.toggle()
        return table
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
 
        addSubview(Table)
        setupConstraint()

    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    func setupConstraint(){
        let tableViewConstraints = [Table.topAnchor.constraint(equalTo: topAnchor, constant: 10), Table.leadingAnchor.constraint(equalTo: leadingAnchor), Table.trailingAnchor.constraint(equalTo: trailingAnchor), Table.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ]
        NSLayoutConstraint.activate(tableViewConstraints)
    }
}


extension TableViewHolder: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let country = countries[indexPath.row]
        cell.render(model: country)
        //        print(listData[indexPath.row].self.name)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
  

    
   
    
}
