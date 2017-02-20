//
//  ViewController.h
//  Calculater
//
//  Created by Hemant Saini on 17/02/17.
//  Copyright © 2017 Hemant Saini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
typedef enum operation
{
    addition,subtraction,multiplecation,devision,persentage,
}Operation;

typedef enum digite
{
    zero,one,two,three,four,five,six,seven,eight,nine,
}digit;
@property(nonatomic)Operation currentOperation;
@property (nonatomic) IBOutlet UILabel *currentOperationLabel;
@property(nonatomic)int digite;
@property (nonatomic) int firstOperand;
@property (nonatomic) int showValue;
@property (weak, nonatomic) IBOutlet UITextField *calculaterScreen;
-(IBAction)digitPressed:(id)sender;
-(IBAction)currentOperation:(id)sender;
- (IBAction)equalButton:(id)sender;
- (IBAction)cancelButton:(id)sender;

@end

