//
//  ViewController.m
//  PlusOuMoins
//
//  Created by mbds on 13/10/2016.
//  Copyright © 2016 mbds.tp.thomaskevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelSelected;
@property (weak, nonatomic) IBOutlet UILabel *labelResult;
@property (weak, nonatomic) IBOutlet UILabel *labelChauffe;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int r = arc4random_uniform(100);
    self.intDevine = r;
  // [self performSelectorInBackground:@selector(saySomething) withObject:nil];
    
}





- (IBAction)newNombre:(UIButton*)sender {
    
    int r = arc4random_uniform(100);
    self.intDevine = r;
    [self.labelResult setText:@""];

}

- (NSString*) plusoumoins:(int)int1 withint2:(int)int2 {
    
    if (int1>int2) {
        return @"C'est plus";
    }
    else if(int1<int2){
        return @"C'est moins";
        
    }
return @"C'est ca !!!!!";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)valueSelected:(UISlider*)sender {
    
    int myInt = (int) [sender value];
    self.labelSelected.text=[NSString stringWithFormat:@"%d", myInt ];
    [self.labelResult setText:[ self plusoumoins:self.intDevine withint2:myInt]];
    UIColor* couleur =  [UIColor colorWithRed:0.00 green:1.00 blue:0.00 alpha:1.0];
    
    [self.labelChauffe setText:@"Tu chauffes !!"];
    if (self.intDevine>myInt) {
    couleur = [UIColor colorWithRed:0.00 green:0.45 blue:0.74 alpha:1.0];
    }
    else if(self.intDevine<myInt){
        couleur = [UIColor colorWithRed:1.00 green:0.20 blue:0.00 alpha:1.0];
    }
    else
    {
        
        [self.labelChauffe setText:@"Bravo !😀😬😁"];
    }
    [self.labelChauffe setHidden:(abs(self.intDevine-myInt)>10) ];
    
    [self.labelChauffe setTextColor:couleur ];
    [self.labelResult setTextColor:couleur ];
    
}

@end
