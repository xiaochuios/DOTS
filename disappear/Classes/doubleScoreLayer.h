//

//  disappear
//
//  Created by CpyShine on 13-6-7.
//  Copyright 2013年 CpyShine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"


@interface doubleScoreLayer : CCLayerColor {
    
    CCLabelTTF * m_logoLabel;
    
    //    CCLabelTTF * m_levelLabel;
    //
    //    CCLabelTTF * m_goldlabel;
    //
    //    CCLabelTTF * m_highScore;
    CCMenuItemImage * m_exittomain;
    
    CCLabelTTF * m_thisRound;
    
    CCProgressTimer * m_expProgress;
    
    
    
    CCMenuItemImage * m_imageItem;
    
    CGPoint m_touchStartLocation;
    
    BOOL m_imageButtonResponseType;
    
    BOOL m_canTriggerAction;
}

+(CCScene*) scene;

-(void) startAnimationDisplay:(NSInteger) score;

-(void) startAnimationDisplay;

@end
