//
//  HTTPService.m
//  DevslopesYoutubeListTutorial
//
//  Created by Kacper Kowalski on 22.01.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

#import "HTTPService.h"

#define URL_BASE "http://localhost:5566"       // preprocessor macros
#define URL_TUTORIALS "/tutorials"

@implementation HTTPService


+ (id) instance {
    static HTTPService *sharedInstance = nil;  // static instance of HTTP class itself
    
    @synchronized (self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc]init];    // only once created and live in memory as static func.
        
        
    }
    
    return sharedInstance;
    
}
                                        // we need a request that can fetch data! & then we can refactor it.
- (void) getTutorials:(nullable onComplete)completionHanlder {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_TUTORIALS]];
    NSURLSession *session = [NSURLSession sharedSession];
    
    // perform a Get request:
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data != nil) {          // if there is data
            NSError *err;           // this is error for parsing data
            NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];  // parse into json
            
            if (err == nil) {                // if there is no error on parsing
                completionHanlder(json, nil);   //NSLog(@"JSON: %@", json.debugDescription);
                
            } else {
                completionHanlder(nil, @"Data is corrupt. Please try again");
            }
            
        } else {
            NSLog(@"Network Err: %@", error.debugDescription);  // checking error on server
            completionHanlder(nil, @"Problem connectrin to the server");
        }
        
    }] resume];
    
    
}


@end
