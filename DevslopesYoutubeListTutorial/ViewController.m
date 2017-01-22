//
//  ViewController.m
//  DevslopesYoutubeListTutorial
//
//  Created by Kacper Kowalski on 22.01.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

#import "ViewController.h"
#import "HTTPService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[HTTPService instance]getTutorials:^(NSDictionary * _Nullable dataDict, NSString * _Nullable errMessage) {
        if (dataDict) { // checking if we have parsed DATA
            NSLog(@"Dictionairy: %@", dataDict.debugDescription);
        } else if (errMessage) { // that's gonna display alert to user
            }
    }];
    
}




@end
