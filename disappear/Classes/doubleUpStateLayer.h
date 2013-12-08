//
//  UpStateLayer.h
//  disappear
//
//  Created by CpyShine on 13-6-6.
//  Copyright 2013年 CpyShine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface doubleUpStateLayer : CCLayerColor {
    
    CCLabelTTF * m_labelTime;
    CCLabelTTF * m_labelScore;
    CCLabelTTF * timelabel;
    CCLabelTTF * scorelabel;
    CCLabelTTF * m_labelTime1;
    CCLabelTTF * m_labelScore1;
    CCLabelTTF * timelabel1;
    CCLabelTTF * scorelabel1;
    
    
    
    CCMenuItemImage * m_scoreItem;
    CCMenuItemImage * m_timeItem;
}

-(void) resetTimeString:(NSString*)string;
-(void) resetScoreString:(NSString*) string;

-(void) startAnimationDisplay;

@end
