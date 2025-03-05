//
//  ViewController.m
//  AppRelojDigital
//
//  Created by Miriam Sanchez on 27/02/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    self.settingsView.hidden = YES;
    self.settingsButton.alpha = 0.20;
}

-(void)updateTimer{
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc]init];
    [timeFormat setDateFormat:@"HH:mm:ss"];
    self.label.text=[timeFormat stringFromDate:[NSDate date]];
}


- (IBAction)settings:(id)sender {
    if(self.settingsView.hidden == YES){
        self.settingsView.hidden = NO;
        self.settingsButton.alpha = 1.0;
        [self.settingsButton setTitle:@"Hide settings" forState:UIControlStateNormal];
    }else{
        self.settingsView.hidden = YES;
        self.settingsButton.alpha = 0.15;
        [self.settingsButton setTitle:@"Show settings" forState:UIControlStateNormal];
    }
}

- (IBAction)backgroundSegCtrl:(id)sender {
    /*
    if (self.backgroundSeg.selectedSegmentIndex == 0) {
        self.backgroundImage.backgroundColor = [UIColor blackColor];
    }else  if (self.backgroundSeg.selectedSegmentIndex == 1) {
        self.backgroundImage.backgroundColor = [UIColor greenColor];
    }else  if (self.backgroundSeg.selectedSegmentIndex == 2) {
        self.backgroundImage.backgroundColor = [UIColor systemPinkColor];
    }
    */
    
    //Para cambiar el background de una imagen
    if (self.backgroundSeg.selectedSegmentIndex == 0) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background1"];
    }else if (self.backgroundSeg.selectedSegmentIndex == 1) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background2"];
    }else if (self.backgroundSeg.selectedSegmentIndex == 2) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background4"];
    }
}

- (IBAction)clockColor:(id)sender {
    if (self.clockColorSeg.selectedSegmentIndex == 0) {
        self.label.textColor = [UIColor whiteColor];
    }else if(self.clockColorSeg.selectedSegmentIndex == 1){
        self.label.textColor = [UIColor yellowColor];
    }else if(self.clockColorSeg.selectedSegmentIndex == 2){
        self.label.textColor = [UIColor redColor];
    }
}
@end
