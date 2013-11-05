//
//  ViewController.m
//  MapViewTest
//
//  Created by Yang Shichang on 13-10-15.
//  Copyright (c) 2013年 Yang152412. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    _mapView.mapType = MKMapTypeStandard;
    _mapView.delegate = self;
    _mapView.showsUserLocation = YES;
    _mapView.showsPointsOfInterest = YES;
    _mapView.showsBuildings = YES;
    [self.view addSubview:_mapView];
    
    // 这个修改 不 commit
    
    // 创建了另一个分支
    self.background = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 100, 100);
    [mapView setRegion:region animated:YES];
}

@end
