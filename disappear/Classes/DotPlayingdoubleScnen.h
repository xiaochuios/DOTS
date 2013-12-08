//
//  DotPlayingScnen.h
//  disappear
//
//  Created by CpyShine on 13-6-1.
//  Copyright 2013年 CpyShine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

#include "configdouble.h"

@class DatadoubleHandle;


@class DotdoubleHudController;

@interface DotPlayingdoubleScnen : CCLayer {
    
    DotdoubleHudController * m_huddoubleController;
    
    DatadoubleHandle       * m_data;
    
    
    CGFloat m_delta;
    
    NSInteger m_score;
    NSInteger m_timeCounter;
    
    NSInteger m_score2;
    NSInteger m_timeCounter2;
    
    BOOL m_pause;
}

+(CCScene*)scene;

-(void) startDotGame;

-(void) playingScoreAdd:(NSInteger) score;
-(void) playingScoreAdd2:(NSInteger) score;

-(void) playerUsedToolDisappear:(PLAYERTOOLTYPE) type;

-(void) pauseGame;
-(void) resumeGame;

@end
