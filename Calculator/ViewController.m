//
//  ViewController.m
//  Calculator
//
//  Created by Slava on 17.05.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
double x, y;
NSInteger operationButton;
BOOL enterFlag;
BOOL yFlag;


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    for (UIButton *valueButton in self.valueBorderAndColorButton) {
        valueButton.layer.borderWidth = 1;
        valueButton.layer.borderColor = [UIColor whiteColor].CGColor;
    }
    
    for (UIButton *operationButton in self.operationBorderAndColorButton) {
        operationButton.layer.borderWidth = 1;
        operationButton.layer.borderColor = [UIColor orangeColor].CGColor;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)cleanLabel:(UIButton *)sender {
    x = y = 0;
    [self labelText];
}

- (IBAction)inversValue:(UIButton *)sender {
    x = x * (-1);
    [self labelText];
}

- (IBAction)percentageNumber:(UIButton *)sender {
}

- (IBAction)valueButton:(UIButton *)sender {
    if (enterFlag) {
        
        y = x;
        x = 0;
        enterFlag = NO;
    }
    
    x = (10.0f * x) + [sender tag];
    
    [self labelText];
}

- (IBAction)operationButton:(UIButton *)sender {
    if (yFlag && !enterFlag) {
        
        
        if (operationButton == 16) {
            x = y + x;
        }
        
        if (operationButton == 15) {
            x = y - x;
        }
        
        if (operationButton == 14) {
            x = y * x;
        }
        
        if (operationButton == 13) {
            x = y / x;
        }
    }
    
    y = x;
    enterFlag = YES;
    yFlag = YES;
    
    operationButton = [sender tag];
    [self labelText];
}

- (void)labelText {
    self.calculationLabel.text = [NSString stringWithFormat:@"%.5g", x];

}
@end
