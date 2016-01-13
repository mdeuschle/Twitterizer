//
//  ViewController.m
//  Twitterizer
//
//  Created by Matt Deuschle on 1/13/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)textViewDidChange:(UITextView *)textView
{
    self.label.text = [NSString stringWithFormat:@"%lu characters", self.textView.text.length];
    
    //[self textViewShouldEndEditing:self.textView];
    
    if (self.textView.text.length == 140)
    {
        textView.editable = NO;
    }
}

//-(BOOL)textViewShouldEndEditing:(UITextView *)textView
//{
//    if (self.textView.text.length == 140)
//    {
//        return YES;
//    }
//    else
//    {
//        return NO;
//    }
//}

- (IBAction)onTwitterizeTap:(UIButton *)sender
{

    NSString *tweet = self.textView.text;
    
    NSMutableString *shortTweet = [NSMutableString new];
    
    NSUInteger length = tweet.length;
    
    NSString *vowels = @"aeiou";
    
    for (int i = 0; i < length; i++)
    {
        if ([vowels containsString:[NSString stringWithFormat:@"%c", [tweet characterAtIndex:i]]])
        {
            NSLog(@"%c", [tweet characterAtIndex:i]);
        }
        else
        {
            [shortTweet appendString:[NSString stringWithFormat:@"%c", [tweet characterAtIndex:i]]];
        }
    }
    self.textView.text = shortTweet;

}
- (IBAction)hashtagButtonPressed:(UIButton *)sender {

    NSString *tweet = self.textView.text;
    NSMutableArray *tweetArray = [tweet componentsSeparatedByString:@" "];
    for (int i = 1; i < tweetArray.count; i = i + 2) {
        tweetArray[i]
    }
}
}

@end
