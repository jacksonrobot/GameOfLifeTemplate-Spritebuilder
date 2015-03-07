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
- (void)onEnter
{
    [super onEnter];
    
    [self setupGrid];
    
    // accept touches on the grid
    self.userInteractionEnabled = YES;
}
-(void)setupGrid
{
// divide the grid's size by the number of colums/rows to figure out the right width and height of each cell
    _cellWidth = self.contentSize.width /GRID_COLUMNS;
    _cellHeight = self.contentSize.height /GRID_ROWS;
    
    float x = 0;
    float y = 0;
    //initialize the array as a blank NSMutableArray
    
    _gridArray = [NSMutableArray array];
    //initialize Creatures
    for (int i = 0; i< GRID_ROWS; i++) {
        _gridArray[i] = [NSMutableArray array];
        x = 0;
        
        for (int j=0; j< GRID_COLUMNS; j++) {
            Creature *creature = [[Creature alloc] initCreature];
            creature.anchorPoint = ccp(0, 0);
            creature.position = ccp(x, y);
            [self addChild:creature];
            //this is shorthand to access an array inisde an array
            _gridArray[i][j] = creature;
            //make creature visible to test this method,remove this once we know we have filled the grid peoperly
            creature.isAlive = YES;
            x += _cellWidth;
        }
        y +=_cellHeight;
    }
}

-(void) touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
//get the x,y coordinates of the touch
    CGPoint touchLocation = [touch locationInNode:self];
    //get the creature at the location
    Creature *creature = [self creatureForTouchPosition:touchLocation];
    //invert it's state -kill it if it's alive,bring it to life if it's dead.
    creature.isAlive = !creature.isAlive;
}
- (Creature *)creatureForTouchPosition:(CGPoint)touchPosition
{
    //get the row and column that was touched, return the Creature inside the corresponding cell
    
}

@end
