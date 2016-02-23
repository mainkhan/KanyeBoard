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
    AVAudioPlayer *_answers1Player;
    AVAudioPlayer *_answers2Player;
    AVAudioPlayer *_answers3Player;
    AVAudioPlayer *_answers4Player;
    int _answersCount;
    
}

@end

@implementation ViewController

- (IBAction)answersPush:(UIButton *)sender {
    // Cycle between 1 of 4 answers sounds
    if(_answersCount >=4 || _answersCount == 0){
        _answersCount=1;
    }
    else{
        NSLog(@"Got here count=%d",_answersCount);
        _answersCount=_answersCount+1;
    }
    
    switch (_answersCount) {
        case 1:
            [_answers1Player play];
            break;
        case 2:
            [_answers2Player play];
            break;
        case 3:
            [_answers3Player play];
            break;
        case 4:
            [_answers4Player play];
            break;
        default:
            NSLog(@"Intefer out of range");
            break;
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Initialize answers cycle counter
    _answersCount =0;
    
    // Construct URL to sound file
    NSString *soundPath = [NSString stringWithFormat:@"%@/answers1.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath: soundPath];
    
    // Create audio player object and initialize with URL to sound
    _answers1Player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    // Construct URL to sound file
    soundPath = [NSString stringWithFormat:@"%@/answers2.mp3", [[NSBundle mainBundle] resourcePath]];
    soundUrl = [NSURL fileURLWithPath: soundPath];
    
    // Create audio player object and initialize with URL to sound
    _answers2Player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    // Construct URL to sound file
    soundPath = [NSString stringWithFormat:@"%@/answers3.mp3", [[NSBundle mainBundle] resourcePath]];
    soundUrl = [NSURL fileURLWithPath: soundPath];
    
    // Create audio player object and initialize with URL to sound
    _answers3Player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    // Construct URL to sound file
    soundPath = [NSString stringWithFormat:@"%@/answers4.mp3", [[NSBundle mainBundle] resourcePath]];
    soundUrl = [NSURL fileURLWithPath: soundPath];
    
    // Create audio player object and initialize with URL to sound
    _answers4Player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
