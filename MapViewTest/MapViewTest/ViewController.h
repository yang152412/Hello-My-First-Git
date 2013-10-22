//
//  ViewController.h
//  MapViewTest
//
//  Created by Yang Shichang on 13-10-15.
//  Copyright (c) 2013年 Yang152412. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController<MKMapViewDelegate>
{
    MKMapView *_mapView;
}

@end
