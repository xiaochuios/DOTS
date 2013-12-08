//
//  PauseLayer.h
//  disappear
//
//  Created by CpyShine on 13-6-6.
//  Copyright 2013年 CpyShine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface doublePauseLayer : CCLayerColor {
    
    CCMenuItemImage * m_resume;
    CCMenuItemImage * m_restart;
    CCMenuItemImage * m_exittomain;
    CCMenuItemImage * m_resume1;
    CCMenuItemImage * m_restart1;
    CCMenuItemImage * m_exittomain1;
    
}

-(void) startAnimationDiaplay;

@end
