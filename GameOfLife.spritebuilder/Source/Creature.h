//
//  Creature.h
//  GameOfLife
//
//  Created by 金凯 on 15/3/7.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

// stores the current state of the creatur
@property (nonatomic, assign) BOOL isAlive;

//stores the amount of living neighors
@property (nonatomic, assign) NSInteger livingNeighbors;

-(id)initCreature;

@end
