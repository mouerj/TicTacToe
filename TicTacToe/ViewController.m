//
//  ViewController.m
//  TicTacToe
//
//  Created by Joseph Mouer on 1/14/16.
//  Copyright © 2016 Joseph Mouer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

// row 0 buttons
@property (weak, nonatomic) IBOutlet UIButton *button00;

@property (weak, nonatomic) IBOutlet UIButton *button01;

@property (weak, nonatomic) IBOutlet UIButton *button02;

// row 1 buttons

@property (weak, nonatomic) IBOutlet UIButton *button10;

@property (weak, nonatomic) IBOutlet UIButton *button11;

@property (weak, nonatomic) IBOutlet UIButton *button12;

// row 2 buttons

@property (weak, nonatomic) IBOutlet UIButton *button20;

@property (weak, nonatomic) IBOutlet UIButton *button21;

@property (weak, nonatomic) IBOutlet UIButton *button22;

@property (nonatomic) BOOL move;


@property (weak, nonatomic) IBOutlet UILabel *winnerLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.move = YES;
   // self.whichPlayerLabel.text = @"X";
}

- (IBAction)onButtonPressed:(UIButton *)sender {
   
    if (self.move == YES) {
        [sender setTitle:@"X" forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.whichPlayerLabel.text = @"O";
        self.move = NO;
    }
    else {
        [sender setTitle: @"O" forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        self.whichPlayerLabel.text = @"X";
        self.move = YES;
    }

    NSLog(@"%@", sender.currentTitle);
         
    // assignment of button currentTitle to corresponding
    
    NSString *button00String = self.button00.currentTitle;
    NSString *button01String = self.button01.currentTitle;
    NSString *button02String = self.button02.currentTitle;
    
    NSString *button10String = self.button10.currentTitle;
    NSString *button11String = self.button11.currentTitle;
    NSString *button12String = self.button12.currentTitle;
    
    NSString *button20String = self.button20.currentTitle;
    NSString *button21String = self.button21.currentTitle;
    NSString *button22String = self.button22.currentTitle;
    
    // logic to determine winner
    
    
    if (
        ([button00String isEqualToString:button01String] && [button01String isEqualToString:button02String]) ||
        ([button10String isEqualToString:button11String] && [button11String isEqualToString:button12String]) ||
        ([button20String isEqualToString:button21String] && [button21String isEqualToString:button22String]) ||
        ([button00String isEqualToString:button10String] && [button10String isEqualToString:button20String]) ||
        ([button01String isEqualToString:button11String] && [button11String isEqualToString:button21String]) ||
        ([button02String isEqualToString:button12String] && [button12String isEqualToString:button22String])
        )
        
    {
        self.winnerLabel.text = @"Player <> is the Winner";
    }
    
    
    
    
    // NSLog(@"value of self.winnerLabel.text is: %@", self.winnerLabel.text);
    //    NSString *test1 = self.button00.currentTitle;
    //
    //    NSString *test2 = sender.titleLabel.text;
    //
    //    NSLog(@"value of self.button00.currentTitle for button00 is: %@", test1);
    //
    //    NSLog(@"value of sender.titleLabel.text for button00 is: %@", test2);

}



@end
