//
//  HTTPService.h
//  DevslopesYoutubeListTutorial
//
//  Created by Kacper Kowalski on 22.01.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

#import <Foundation/Foundation.h>

// Block syntax for a callback! Very weird syntax


typedef void (^onComplete)(NSArray * __nullable dataArray, NSString * __nullable errMessage);

@interface HTTPService : NSObject

+ (id) instance;                    // static func -> static - only one of it in memory; call it globally on class!

- (void) getTutorials:(nullable onComplete)completionHanlder;



@end
