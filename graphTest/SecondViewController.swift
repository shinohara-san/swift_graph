//
//  SecondViewController.swift
//  graphTest
//
//  Created by Yuki Shinohara on 2020/06/08.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit
import Charts

class SecondViewController: UIViewController, ChartViewDelegate {
    
    var lineChart = LineChartView()

        override func viewDidLoad() {
            super.viewDidLoad()
            lineChart.delegate = self
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
    //        位置
            lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
            lineChart.center = view.center
            view.addSubview(lineChart)
    //        データ
            var entries = [ChartDataEntry]()
            
            for x in 0..<10{
                entries.append(ChartDataEntry(x: Double(x),
                                                 y: Double(x))
            )}
            
    //        データをグラフに反映（グラフの種類もここで変えられる）
            let set = LineChartDataSet(entries: entries)
            set.colors = ChartColorTemplates.joyful()
            
            let data = LineChartData(dataSet: set)
            lineChart.data = data
        }
    

}
