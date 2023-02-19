//
//  DeviceActivityMonitorExtension.swift
//  ellehacksdeviceactivityext
//
//  Created by Pegah Fallah on 2023-02-18.
//

import SwiftUI
import DeviceActivity

//@main
//struct ellehacksdeviceactivityext: DeviceActivityReportExtension {
//    var body: some DeviceActivityReportScene {
//        BarChartReport { configuration in BarChartView(configuration: configuration)}
//    }
//}
//
//struct BarChartView: View {
//    struct Configuration {
//        let totalUsageByCategory: [ActivityCategory:TimeInterval]
//    }
//    let configuration: Configuration
//    var body: some View {
//        BarChart(usage: configuration.totalUsageByCategory)
//    }
//}
//
//struct BarChart: DeviceActivityReportScene {
//    let context: DeviceActivityReport.Context = .barChart
//    let content: (BarChartView.Configuration) -> PieChartView
//    func makeConfiguration(representing data: [DeviceActivityResults]) -> BarChartView.Configuration {
//        var totalUsageByCategory: [ActivityCategory:TimeInterval]
//        totalUsageByCategory = data.map()
//
//        return BarChartView.Configuration(totalUsageByCategory: totalUsage)
//    }
//}


// Optionally override any of the functions below.
// Make sure that your class name matches the NSExtensionPrincipalClass in your Info.plist.
class DeviceActivityMonitorExtension: DeviceActivityMonitor {
    override func intervalDidStart(for activity: DeviceActivityName) {
        super.intervalDidStart(for: activity)
        
        // Handle the start of the interval.
    }
    
    override func intervalDidEnd(for activity: DeviceActivityName) {
        super.intervalDidEnd(for: activity)
        
        // Handle the end of the interval.
    }
    
    override func eventDidReachThreshold(_ event: DeviceActivityEvent.Name, activity: DeviceActivityName) {
        super.eventDidReachThreshold(event, activity: activity)
        
        // Handle the event reaching its threshold.
    }
    
    override func intervalWillStartWarning(for activity: DeviceActivityName) {
        super.intervalWillStartWarning(for: activity)
        
        // Handle the warning before the interval starts.
    }
    
    override func intervalWillEndWarning(for activity: DeviceActivityName) {
        super.intervalWillEndWarning(for: activity)
        
        // Handle the warning before the interval ends.
    }
    
    override func eventWillReachThresholdWarning(_ event: DeviceActivityEvent.Name, activity: DeviceActivityName) {
        super.eventWillReachThresholdWarning(event, activity: activity)
        
        // Handle the warning before the event reaches its threshold.
    }
}
