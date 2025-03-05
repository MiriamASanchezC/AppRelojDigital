//
//  ViewController.h
//  AppRelojDigital
//
//  Created by Miriam Sanchez on 27/02/25.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColorSeg;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundSeg;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
- (IBAction)clockColor:(id)sender;
- (IBAction)backgroundSegCtrl:(id)sender;
- (IBAction)settings:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *settingsView;


@end

