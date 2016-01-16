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
@property (weak, nonatomic) NSString  *button00String;

@property (weak, nonatomic) IBOutlet UIButton *button01;
@property (weak, nonatomic) NSString  *button01String;

@property (weak, nonatomic) IBOutlet UIButton *button02;
@property (weak, nonatomic) NSString  *button02String;

// row 1 buttons

@property (weak, nonatomic) IBOutlet UIButton *button10;
@property (weak, nonatomic) NSString  *button10String;

@property (weak, nonatomic) IBOutlet UIButton *button11;
@property (weak, nonatomic) NSString  *button11String;

@property (weak, nonatomic) IBOutlet UIButton *button12;
@property (weak, nonatomic) NSString  *button12String;

// row 2 buttons

@property (weak, nonatomic) IBOutlet UIButton *button20;
@property (weak, nonatomic) NSString  *button20String;

@property (weak, nonatomic) IBOutlet UIButton *button21;
@property (weak, nonatomic) NSString  *button21String;

@property (weak, nonatomic) IBOutlet UIButton *button22;
@property (weak, nonatomic) NSString  *button22String;

@property (nonatomic) BOOL move;

@property (weak, nonatomic) IBOutlet UILabel *winnerLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.move = YES;
    
    self.winnerLabel.text = @"Winner: TBA";
    
    // assignment of button currentTitle to corresponding
    
    self.button00String = @"00";
    self.button01String = @"01";
    self.button02String = @"02";
    
    self.button10String = @"10";
    self.button11String = @"11";
    self.button12String = @"12";
    
    self.button20String = @"20";
    self.button21String = @"21";
    self.button22String = @"22";
    
    
}

- (IBAction)onButtonPressed:(UIButton *)sender {
   
    if (self.move == YES) {
        [sender setTitle:@"X" forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.whichPlayerLabel.text = @"O";
        self.move = NO;
        
        if ([sender.titleLabel.text isEqualToString:@"00"]) {
            self.button00String = @"X";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"01"]) {
            self.button01String = @"X";
        }

        if ([sender.titleLabel.text isEqualToString:@"02"]) {
            self.button02String = @"X";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"10"]) {
            self.button10String = @"X";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"11"]) {
            self.button11String = @"X";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"12"]) {
            self.button12String = @"X";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"20"]) {
            self.button20String = @"X";
        }
        if ([sender.titleLabel.text isEqualToString:@"21"]) {
            self.button21String = @"X";
        }
        if ([sender.titleLabel.text isEqualToString:@"22"]) {
            self.button22String = @"X";
        }
        
    }
    else {
        [sender setTitle: @"O" forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        self.whichPlayerLabel.text = @"X";
        self.move = YES;
        
        if ([sender.titleLabel.text isEqualToString:@"00"]) {
            self.button00String = @"O";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"01"]) {
            self.button01String = @"O";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"02"]) {
            self.button02String = @"O";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"10"]) {
            self.button10String = @"O";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"11"]) {
            self.button11String = @"O";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"12"]) {
            self.button12String = @"O";
        }
        
        if ([sender.titleLabel.text isEqualToString:@"20"]) {
            self.button20String = @"O";
        }
        if ([sender.titleLabel.text isEqualToString:@"21"]) {
            self.button21String = @"O";
        }
        if ([sender.titleLabel.text isEqualToString:@"22"]) {
            self.button22String = @"O";
        }

    }

    NSLog(@"sender.currentTitle is: %@", sender.currentTitle);
    NSLog(@"sender.titleLabel.text is: %@", sender.titleLabel.text);
    // NSLog(@"self.button00String is: %@", self.button00String);
    
    
    // logic to determine winner
    
    
    if (
        ([self.button00String isEqualToString:self.button01String] && [self.button01String isEqualToString:self.button02String]) ||
        ([self.button10String isEqualToString:self.button11String] && [self.button11String isEqualToString:self.button12String]) ||
        ([self.button20String isEqualToString:self.button21String] && [self.button21String isEqualToString:self.button22String]) ||
        ([self.button00String isEqualToString:self.button10String] && [self.button10String isEqualToString:self.button20String]) ||
        ([self.button01String isEqualToString:self.button11String] && [self.button11String isEqualToString:self.button21String]) ||
        ([self.button02String isEqualToString:self.button12String] && [self.button12String isEqualToString:self.button22String]) ||
        ([self.button00String isEqualToString:self.button11String] && [self.button11String isEqualToString:self.button22String]) ||
        ([self.button02String isEqualToString:self.button11String] && [self.button11String isEqualToString:self.button20String])
        )
        
    {
        NSString *theWinner = [NSString stringWithFormat:@"Player %@ is the Winner", sender.currentTitle];
        
        self.winnerLabel.text = theWinner;
        
    }


}



@end
