//
//  ViewController.m
//  Calculater
//
//  Created by Hemant Saini on 17/02/17.
//  Copyright © 2017 Hemant Saini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize showValue,currentOperation,firstOperand;

- (void)viewDidLoad {
    [super viewDidLoad];
    _currentOperationLabel.text = @"";
    [self equalButton:nil];

}

-(IBAction)digitPressed:(id)sender {
       UIButton *pressedButton = (UIButton *)sender;
    NSUInteger selectDigit = [pressedButton tag];
    switch (selectDigit) {
        case zero:
            showValue = 0;
            break;
            case one:
            showValue = 1;
             break;
            case two:
            showValue = 2;
             break;
            case three:
            showValue = 3;
             break;
            case four:
            showValue = 4;
             break;
            case five:
            showValue= 5;
             break;
            case six:
            showValue = 6;
             break;
            case seven:
            showValue = 7;
             break;
            case eight:
            showValue = 8 ;
             break;
            case nine:
            showValue = 9 ;
            break;
            
        default:
            break;
    }
    _calculaterScreen.text = [NSString stringWithFormat:@"%d",showValue];
}
-(IBAction)currentOperation:(id)sender{
    UIButton *pressedButton = (UIButton *)sender;
    NSUInteger selectedOperation = [pressedButton tag];
    switch (selectedOperation) {
        case addition:
            _currentOperationLabel.text = @"+";
            firstOperand = showValue;
            currentOperation = addition;
            break;

        case subtraction:
            _currentOperationLabel.text = @"-";
            firstOperand = showValue;
            currentOperation = subtraction;
            break;
            
        case multiplecation:
            _currentOperationLabel.text = @"*";
            firstOperand = showValue;
            currentOperation = multiplecation;
            break;
            
        case devision:
            _currentOperationLabel.text = @"/";
            firstOperand = showValue;
            currentOperation = devision;
            break;



        default:
            break;
    }
    
    
    
}

- (IBAction)equalButton:(id)sender {
    UIButton *pressedButton = (UIButton *)sender;
    NSUInteger selectedOperation = [pressedButton tag];
    int result,currentValue;
    switch (currentOperation) {
        case addition:
            result = firstOperand + [_calculaterScreen.text integerValue];
            break;
            case subtraction:
            result = firstOperand - [_calculaterScreen.text integerValue];
            case multiplecation:
            result = firstOperand * [_calculaterScreen.text integerValue];
            case devision:
            result = firstOperand / [_calculaterScreen.text integerValue];
            case persentage:
            result =firstOperand * [_calculaterScreen.text integerValue];
        default:
            break;
    }
    self.calculaterScreen.text = [NSString stringWithFormat:@"%d",result];
}

- (IBAction)cancelButton:(id)sender {
    _currentOperationLabel.text = @"";
    _calculaterScreen.text = @"";
    showValue = 0;
    firstOperand = 0;
}



@end
