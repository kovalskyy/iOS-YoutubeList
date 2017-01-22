//
//  HTTPService.m
//  DevslopesYoutubeListTutorial
//
//  Created by Kacper Kowalski on 22.01.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

#import "HTTPService.h"

@implementation HTTPService


+ (id) instance {
    static HTTPService *sharedInstance = nil;  // static instance of HTTP class itself
    
    @synchronized (self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc]init];    // only once created and live in memory as static func.
        
        
    }
    
    return sharedInstance;
    
}


@end
