//
//  TableViewCell.swift
//  Perfection 4.0
//
//  Created by Sidney Okine on 11/08/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    var capitalLabel: UILabel = {
        let label = UILabel()
        label.text = "Capital"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    
    var capitalData: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    
    var populationLabel: UILabel = {
        let label = UILabel()
        label.text = "Population"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    var populationData: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    
    var regionLabel: UILabel = {
        let label = UILabel()
        label.text = "Region"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    var regionData: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    
    var areaLabel: UILabel = {
        let label = UILabel()
        label.text = "Area"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    var areaData: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        return label
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(nameLabel)
        contentView.addSubview(capitalLabel)
        contentView.addSubview(areaLabel)
        contentView.addSubview(populationLabel)
        contentView.addSubview(regionLabel)
        
        contentView.addSubview(capitalData)
        contentView.addSubview(areaData)
        contentView.addSubview(populationData)
        contentView.addSubview(regionData)
        setupConstraints()
        contentView.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    func setupConstraints(){
   
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15).isActive = true
        
        capitalLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 12).isActive = true
        capitalLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        
        capitalData.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 12).isActive = true
        capitalData.leftAnchor.constraint(equalTo: capitalLabel.rightAnchor, constant: 15).isActive = true
        
        populationLabel.topAnchor.constraint(equalTo: capitalLabel.bottomAnchor, constant: 12).isActive = true
        populationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        
        populationData.topAnchor.constraint(equalTo: capitalLabel.bottomAnchor, constant: 12).isActive = true
        populationData.leftAnchor.constraint(equalTo: populationLabel.rightAnchor, constant: 15).isActive = true
        
        regionLabel.topAnchor.constraint(equalTo: populationLabel.bottomAnchor, constant: 12).isActive = true
        regionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        
        regionData.topAnchor.constraint(equalTo: populationLabel.bottomAnchor, constant: 12).isActive = true
        regionData.leftAnchor.constraint(equalTo: regionLabel.rightAnchor, constant: 15).isActive = true
        
        
        areaLabel.topAnchor.constraint(equalTo: regionLabel.bottomAnchor, constant: 12).isActive = true
        areaLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        
        areaData.topAnchor.constraint(equalTo: regionLabel.bottomAnchor, constant: 12).isActive = true
        areaData.leftAnchor.constraint(equalTo: areaLabel.rightAnchor, constant: 15).isActive = true
    }
    
    func render(model: Countries){
        self.nameLabel.text = model.commName
        self.capitalData.text = model.countryCapital
        self.regionData.text = model.region
        self.populationData.text = String(model.population)
        self.areaData.text = String(model.area)
        
        
    }
  
    
}
