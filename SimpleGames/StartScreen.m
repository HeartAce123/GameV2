//
//  StartScreen.m
//  SimpleGames
//
//  Created by LieuHaiDang on 1/2/14.
//  Copyright (c) 2014 LieuHaiDang. All rights reserved.
//

#import "StartScreen.h"
#import "PictureBoard.h"
@interface StartScreen ()

@end

@implementation StartScreen
UIButton* start;
UIButton* level;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initMenu];
}
-(void) initMenu
{
    start = [[UIButton alloc] initWithFrame:CGRectMake(117, 357, 87, 30)];
    level = [[UIButton alloc] initWithFrame:CGRectMake(106, 395, 108, 30)];
    [start setBackgroundImage:[UIImage imageNamed:@"StartButton.PNG"] forState:UIControlStateNormal];
    [start addTarget:self action:@selector(startButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:start];
    [self.view addSubview:level];
}
-(void) startButtonClick: (id)sender
{
    [start removeFromSuperview];
    [level removeFromSuperview];
    self.game = [[PictureBoard alloc] initWithLevel:3];
    for(PictureCell* cell in self.game.cellArray)
    {
        [self.view addSubview:cell];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
