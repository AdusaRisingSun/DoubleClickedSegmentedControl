//
//  ViewController.m
//  DoubleClickedSegmentedControl
//
//  Created by Adusa on 15/8/31.
//  Copyright (c) 2015年 Adusa. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
{
    UILabel *_indexLabel;
    int _count;
    int _title;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *items=[NSArray arrayWithObjects:@"One",@"Two",@"Three", nil];
    DoubleClickedSegmented *dcs=[[DoubleClickedSegmented alloc]initWithItems:items];
    dcs.tapDelegate=self;
    dcs.frame=CGRectMake(40, 40, 300, 40);
    dcs.selectedSegmentIndex=0;
    [self.view addSubview:dcs];
    
    _indexLabel=[[UILabel alloc]initWithFrame:CGRectMake(150, 100, 100, 40)];
    _count=0;
    _title=0;
    _indexLabel.text=@"One:0s";
    [self.view addSubview:_indexLabel];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)performSegmentAction:(DoubleClickedSegmented *)dcs
{
    NSInteger index=dcs.selectedSegmentIndex;
    if (index==0) {
        if (_title==1) {
            _indexLabel.text=[NSString stringWithFormat:@"One:%is",_count+1];
            _count++;
            NSDictionary *attributeDictionary = @{NSForegroundColorAttributeName : [UIColor redColor]};
            [dcs setTitleTextAttributes:attributeDictionary forState:UIControlStateSelected];
        }
        else
        {
            _count=1;
            _indexLabel.text=[NSString stringWithFormat:@"One:%is",_count];
            _title=1;
            [dcs setTitleTextAttributes:nil forState:UIControlStateSelected];
        }
    }else if(index==1)
    {
        if (_title==2) {
            _indexLabel.text=[NSString stringWithFormat:@"Two:%is",_count+1];
            _count++;
            NSDictionary *attributeDictionary = @{NSForegroundColorAttributeName : [UIColor redColor]};
            [dcs setTitleTextAttributes:attributeDictionary forState:UIControlStateSelected];
        }
        else
        {
            _count=1;
            _indexLabel.text=[NSString stringWithFormat:@"Two:%is",_count];
            _title=2;
            [dcs setTitleTextAttributes:nil forState:UIControlStateSelected];
        }
    }else if (index==2)
    {
        if (_title==3) {
            _indexLabel.text=[NSString stringWithFormat:@"Three:%is",_count+1];
            _count++;
            NSDictionary *attributeDictionary = @{NSForegroundColorAttributeName : [UIColor redColor]};
            [dcs setTitleTextAttributes:attributeDictionary forState:UIControlStateSelected];
        }
        else
        {
            _count=1;
            _indexLabel.text=[NSString stringWithFormat:@"Three:%is",_count];
            _title=3;
            [dcs setTitleTextAttributes:nil forState:UIControlStateSelected];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
