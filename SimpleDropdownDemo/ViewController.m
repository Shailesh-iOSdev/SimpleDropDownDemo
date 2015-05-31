//
//  ViewController.m
//  SimpleDropdownDemo
//
//  Created by Shailesh on 31/05/15.
//  Copyright (c) 2015 Apress. All rights reserved.
//

#import "ViewController.h"
#import "NIDropDown.h"

@interface ViewController ()<NIDropDownDelegate>{
    NIDropDown *dropDown;

}
@property (strong, nonatomic) IBOutlet UIButton *btnSelect;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)selectClicked:(id)sender {
    NSArray * arr = [[NSArray alloc] init];
    arr = [NSArray arrayWithObjects:@"Hello 0", @"Hello 1", @"Hello 2", @"Hello 3", @"Hello 4", @"Hello 5", @"Hello 6", @"Hello 7", @"Hello 8", @"Hello 9",nil];
    if(dropDown == nil) {
        CGFloat f = 200;
        dropDown = [[NIDropDown alloc]showDropDown:sender dropDownHeight:&f optionsArray:arr optionsImagesArray:nil dropdownDirection:@"down"];
        dropDown.delegate = self;
    }
    else {
        [dropDown hideDropDown:sender];
        [self rel];
    }
}

- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    [self rel];
}

-(void)rel{
    dropDown = nil;
}



@end
