//
//  ViewController.m
//  ColorMixer
//
//  Created by IT-Högskolan on 2015-01-22.
//  Copyright (c) 2015 IT-Högskolan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *colorDisplay;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;

@end

@implementation ViewController

- (UIColor*) currentColor {
    return [UIColor colorWithRed:self.redSlider.value
                           green:self.greenSlider.value
                            blue:self.blueSlider.value
                           alpha:1.0f];
}

- (IBAction)sliderChanged:(id)sender {
    self.colorDisplay.backgroundColor = [self currentColor];
    
    self.redLabel.text = [NSString stringWithFormat:@"%.2f", self.redSlider.value];

    self.greenLabel.text = [NSString stringWithFormat:@"%.2f", self.greenSlider.value];

    self.blueLabel.text = [NSString stringWithFormat:@"%.2f", self.blueSlider.value];

}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self sliderChanged:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
