//
//  VideoCell.h
//  DevslopesYoutubeListTutorial
//
//  Created by Kacper Kowalski on 23.01.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoCell : UITableViewCell

-(void) updateUI:(nonnull Video*)video;

@end
