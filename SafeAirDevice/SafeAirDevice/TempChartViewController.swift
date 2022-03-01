//
//  TempChartViewController.swift
//  SafeAirDevice
//
//  Created by Rafka Daou on 2/28/22.
//

import UIKit
import Charts
import TinyConstraints
import Foundation
import FirebaseAuth
import FirebaseDatabase
class TempChartViewController: UIViewController, ChartViewDelegate {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var lineChart = LineChartView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
        //super.viewDidLayoutSubviews
        // Do any additional setup after loading the view. 
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lineChart.frame = CGRect(x:0, y:0, width: self.view.frame.size.width,
                                 height: self.view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        

        var entries = [ChartDataEntry]()
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.material()
        lineChart.gridBackgroundColor = UIColor.darkGray

        let data = LineChartData(dataSet: set)
        self.lineChart.data  =  data

    }
}




/*
 
 
 
 */
