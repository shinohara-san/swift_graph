//
//  ThirdViewController.swift
//  graphTest
//
//  Created by Yuki Shinohara on 2020/06/08.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit
import Charts

class ThirdViewController: UIViewController, ChartViewDelegate {

   var pieChart = PieChartView()

        override func viewDidLoad() {
            super.viewDidLoad()
            pieChart.delegate = self
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
    //        位置
            pieChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
            pieChart.center = view.center
            view.addSubview(pieChart)
    //        データ
            var entries = [ChartDataEntry]()
            
            for x in 0..<10{
                entries.append(ChartDataEntry(x: Double(x),
                                                 y: Double(x))
            )}
            
    //        データをグラフに反映（グラフの種類もここで変えられる）
            let set = PieChartDataSet(entries: entries)
            set.colors = ChartColorTemplates.joyful()
            
            let data = PieChartData(dataSet: set)
            pieChart.data = data
        }

}
