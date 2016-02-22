//
//  ViewController.m
//  KanyeBoard
//
//  Created by Main Khan on 2/20/16.
//  Copyright © 2016 Main Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    AVAudioPlayer *_answersPlayer;
    
}

@end

@implementation ViewController

- (IBAction)answersPush:(UIButton *)sender {
    [_answersPlayer play];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Construct URL to sound file
    NSString *answersPath = [NSString stringWithFormat:@"%@/cheer.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *answersUrl = [NSURL fileURLWithPath: answersPath];
    
    // Create audio player object and initialize with URL to sound
    _answersPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:answersUrl error:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
