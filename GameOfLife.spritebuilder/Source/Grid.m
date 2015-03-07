//
//  Grid.m
//  GameOfLife
//
//  Created by 金凯 on 15/3/7.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "Grid.h"
#import "Creature.h"

//these are variables that cannot be changed
static const int GRID_ROWS =8;
static const int GRID_COLUMNS =10;

@implementation Grid {

    NSMutableArray *_gridArray;//生成一个二维数组
    
    float _cellWidth;//放置生物的宽
    
    float _cellHeight;//放置生物的高
}
-(void)onEnter{
    [super onEnter];
    [self setupGrid];
    //accept touch on the grid
    self.userInteractionEnabled = YES;
}

@end
