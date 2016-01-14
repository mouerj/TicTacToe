//
//  ViewController.m
//  TicTacToe
//
//  Created by Joseph Mouer on 1/14/16.
//  Copyright © 2016 Joseph Mouer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
}


- (IBAction)onButtonPressed:(UIButton *)sender {
    
    
    [sender setTitle:@"X" forState:UIControlStateNormal];
    
    NSMutableArray *ticTac = @[ @[ @"button00", @"button01", @"button02" ],
                                @[ @"button10", @"button11", @"button12" ],
                                @[ @"button20", @"button21", @"button22" ] ];
    
    
    
    

    
    
    
    
}




@end
