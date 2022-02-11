//
//  ChangeViewBridge.m
//  RnUseVCTest
//
//  Created by 위대연 on 2022/02/11.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "React/RCTBridgeModule.h"
#import "ChangeViewBridge.h"
 
@implementation ChangeViewBridge
 
RCT_EXPORT_MODULE(ChangeViewBridge);

RCT_EXPORT_METHOD(changeToNativeView) {
  NSLog(@"RN binding - Native View - Loading ViewController.swift");
  dispatch_async(dispatch_get_main_queue(), ^{
      AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
      [appDelegate goToNativeView];
  });
}
@end
