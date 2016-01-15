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

@property (strong, nonatomic) NSMutableArray *ticTac;

@property (nonatomic) BOOL move;

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
         


}



@end
