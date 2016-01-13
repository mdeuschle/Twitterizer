//
//  ViewController.m
//  Twitterizer
//
//  Created by Matt Deuschle on 1/13/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onTwitterizeTap:(UIButton *)sender
{
    NSString *tweet = self.textView.text;
    
    NSMutableString *shortTweet = [NSMutableString new];
    
    NSUInteger length = tweet.length;
    
    NSString *vowels = @"aeiou";
    
    for (int i = 0; i < length; i++)
    {
        if ([vowels containsString:[NSString stringWithFormat:@"%c", [tweet characterAtIndex:i] ] ] )
        {
            <#statements#>
        }
    }
}

@end
