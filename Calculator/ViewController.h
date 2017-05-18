//
//  ViewController.h
//  Calculator
//
//  Created by Slava on 17.05.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *calculationLabel;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *valueBorderAndColorButton;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *operationBorderAndColorButton;

- (IBAction)cleanLabel:(UIButton *)sender;          // очистить
- (IBAction)inversValue:(UIButton *)sender;         // инверсия с + на - и наоборот
- (IBAction)percentageNumber:(UIButton *)sender;    // процент от числа
- (IBAction)valueButton:(UIButton *)sender;         // от 0 до 9
- (IBAction)operationButton:(UIButton *)sender;     // операции


@end

