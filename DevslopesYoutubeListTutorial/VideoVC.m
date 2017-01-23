//
//  VideoVC.m
//  DevslopesYoutubeListTutorial
//
//  Created by Kacper Kowalski on 23.01.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

#import "VideoVC.h"
#import "Video.h"

@interface VideoVC ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *descLbl;

@end

@implementation VideoVC
- (IBAction)DoneBtnTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // prepare for segue is called before the viewDidLoad is called
    
    self.titleLbl.text = self.video.videoTitle;
    self.descLbl.text = self.video.videoDescription;
    
}





@end
