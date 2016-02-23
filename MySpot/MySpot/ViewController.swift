//
//  ViewController.swift
//  MySpot
//
//  Created by kazuki nishimura on 2016/02/23.
//  Copyright © 2016年 kazuki nishimura. All rights reserved.
//

import UIKit
import Mapbox


class ViewController: UIViewController, MGLMapViewDelegate {

    var mapView: MGLMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize the map view
        mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        // set the map's center coordinate
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: 38.894368,
            longitude: -77.036487),
            zoomLevel: 15, animated: false)
        view.addSubview(mapView)
        
        //ピンの表示
        let point = MGLPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 38.894368, longitude: -77.036487)
        point.title = "こんにちは"
        point.subtitle = "mapboxでの表示です"
        
        // Add annotation `point` to the map
        mapView.addAnnotation(point)
        
        mapView.delegate = self
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

