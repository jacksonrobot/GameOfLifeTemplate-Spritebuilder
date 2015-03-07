//
//  Grid.h
//  GameOfLife
//
//  Created by 金凯 on 15/3/7.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Grid : CCSprite

@property (nonatomic, assign) int totalAlive;
@property (nonatomic, assign) int generation;


@end
