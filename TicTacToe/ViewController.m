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

@property BOOL move;

@property   NSArray *buttons;

@property NSString *player1;
@property NSString *player2;
@property NSString *player;

@property (weak, nonatomic) IBOutlet UILabel *winnerLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.buttons = @[self.button00, self.button01, self.button02, self.button10, self.button11, self.button12, self.button20, self.button21, self.button22];
    self.move = YES;
    self.player1 = @"Player One";
    self.player2 = @"Player Two";
    
    if (self.move == YES) {
        self.whichPlayerLabel.text = [NSString stringWithFormat:@"It's Player %@'s turn", self.player1];
    }else {
        self.whichPlayerLabel.text = [NSString stringWithFormat:@"It's Player %@'s turn", self.player2];
    }
    
}

- (IBAction)onButtonPressed:(UIButton *)sender {
    
    if (self.move) {
        self.whichPlayerLabel.text = [NSString stringWithFormat:@"It's Player %@'s turn", self.player2];
        [sender setTitle:@"X" forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    }
    else {
        self.whichPlayerLabel.text = [NSString stringWithFormat:@"It's Player %@'s turn", self.player1];
        [sender setTitle: @"O" forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        
    }
   
    self.move = !self.move;
    [sender setEnabled:NO];
    NSString *playerWon = [self winningPlayer:sender.currentTitle];
    if (playerWon != nil) {
        NSString *title = [NSString stringWithFormat:@"Player %@ Won!", self.player];
        UIAlertController *alertView = [UIAlertController alertControllerWithTitle:title  message:@"Thanks for Playing!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *playAgain = [UIAlertAction actionWithTitle:@"Play Again?" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            for (UIButton *button in self.buttons) {
                [button setTitle:nil forState:UIControlStateNormal];
                [button setEnabled:YES];
            }
        }];
        [self presentViewController:alertView animated:YES completion:^{
        }];
        [alertView addAction:playAgain];
        
    } else {
        BOOL hasNilButton = NO;
        for (UIButton * button in self.buttons) {
            if ([button currentTitle] == nil) {
                hasNilButton = YES;
            }
        }
        if (!hasNilButton) {
            UIAlertController *alertView =[UIAlertController alertControllerWithTitle:@"Tie Game" message:@"Play Again"preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *playAgain = [UIAlertAction actionWithTitle:@"Play Again?" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                for (UIButton *button in self.buttons) {
                    [button setTitle:nil forState:UIControlStateNormal];
                    [button setEnabled:YES];

            }
        }];
        [self presentViewController:alertView animated:YES completion:^{
                    
        }];
                     
        [alertView addAction:playAgain];
        }
    }
}
- (NSString *)winningPlayer:(NSString *)sender {
    if ([sender isEqualToString:[NSString stringWithFormat:@"X"]]) {
        self.player = self.player1;
    }else {
        self.player = self.player2;
    }
    if ([[self.buttons[0] currentTitle] isEqualToString:[self.buttons[1] currentTitle]] && [[self.buttons[1] currentTitle] isEqualToString:[self.buttons[2] currentTitle]]) {
        
        return self.player;
   
    } else if ([[self.buttons[3] currentTitle] isEqualToString:[self.buttons[4] currentTitle]] && [[self.buttons[4] currentTitle] isEqualToString:[self.buttons[5] currentTitle]]) {
        
        return self.player;
    
    } else if ([[self.buttons[6] currentTitle] isEqualToString:[self.buttons[7] currentTitle]] && [[self.buttons[7] currentTitle] isEqualToString:[self.buttons[8] currentTitle]]) {
        
        return self.player;
        
    } else if ([[self.buttons[0] currentTitle] isEqualToString:[self.buttons[3] currentTitle]] && [[self.buttons[3] currentTitle] isEqualToString:[self.buttons[6] currentTitle]]) {
        
        return self.player;
        
    } else if ([[self.buttons[1] currentTitle] isEqualToString:[self.buttons[4] currentTitle]] && [[self.buttons[4] currentTitle] isEqualToString:[self.buttons[7] currentTitle]]) {
        
        return self.player;
        
    } else if ([[self.buttons[2] currentTitle] isEqualToString:[self.buttons[5] currentTitle]] && [[self.buttons[5] currentTitle] isEqualToString:[self.buttons[8] currentTitle]]) {
        
        return self.player;
        
    } else if ([[self.buttons[2] currentTitle] isEqualToString:[self.buttons[4] currentTitle]] && [[self.buttons[4] currentTitle] isEqualToString:[self.buttons[6] currentTitle]]) {
        
        return self.player;
        
    } else if ([[self.buttons[0] currentTitle] isEqualToString:[self.buttons[4] currentTitle]] && [[self.buttons[4] currentTitle] isEqualToString:[self.buttons[8] currentTitle]]) {
        
        return self.player;
        
    } else {
        
        return nil;
    }
    

}

        
@end
