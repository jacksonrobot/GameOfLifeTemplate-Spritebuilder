//
//  Creature.m
//  GameOfLife
//
//  Created by 金凯 on 15/3/7.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

-(instancetype)initCreature{
//since we made Creature inherit from CCSpritr,'super' below refers to CCSprite
    self = [super initWithImageNamed:@"GameOflifeAssets/Assets/bubble.png"];
    if (self) {
        self.isAlive = NO;
    }
    return self;
}
@end
