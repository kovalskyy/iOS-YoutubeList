//
//  HTTPService.h
//  DevslopesYoutubeListTutorial
//
//  Created by Kacper Kowalski on 22.01.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPService : NSObject

+ (id) instance;                    // static func -> static - only one of it in memory; call it globally on class!

@end
