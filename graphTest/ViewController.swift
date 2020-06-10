//
//  ViewController.swift
//  graphTest
//
//  Created by Yuki Shinohara on 2020/06/08.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController, ChartViewDelegate {
    
    var barChart = BarChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        位置
        barChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        barChart.center = view.center
        view.addSubview(barChart)
//        データ
        var entries = [BarChartDataEntry]()
        
        for x in 0..<10{
            entries.append(BarChartDataEntry(x: Double(x),
                                             y: Double(x))
        )}
        
//        データをグラフに反映
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.liberty()
        
        let data = BarChartData(dataSet: set)
        barChart.data = data
    }


}

