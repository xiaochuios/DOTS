//
//  DotGameScene.m
//  disappear
//
//  Created by CpyShine on 13-5-31.
//  Copyright 2013年 CpyShine. All rights reserved.
//

#import "DotGameScene.h"

#include "AppDelegate.h"

#import "DotPlayingScnen.h"
#import "DotPlayingdoubleScnen.h"

#import "DataController.h"


#import "TopScoreLayer.h"
#import "config.h"



#define GameLayerTag 1001


@implementation DotGameScene


- (id)init
{
    self = [super init];
    if (self) {
        
        CCLayerColor * backGroundLayer = [CCLayerColor layerWithColor:ccc4(255, 255, 255, 255)];
        [backGroundLayer setAnchorPoint:ccp(0, 0)];
        [self addChild:backGroundLayer];
        
        
    }
    return self;
}


-(void)onEnter{
    
    [super onEnter];
    
    CGSize size = [CCDirector sharedDirector].winSize;
    m_logo = [CCMenuItemImage itemWithNormalImage:@"dots_logo_ipad.png" selectedImage:@"dots_logo_ipad.png"];
    m_singleplay=[CCMenuItemImage itemWithNormalImage:@"Images/play_now.png" selectedImage:@"Images/play_now.png" target:self selector:@selector(playingNow:)];
    
    
    m_playnow = [CCMenuItemImage itemWithNormalImage:@"Images/multiple_player.png" selectedImage:@"Images/multiple_player.png" target:self selector:@selector(playingdouble:)];
    
    
    
    
    
    
    
    CCMenu *menu = [CCMenu menuWithItems:m_logo,m_singleplay,m_playnow,nil];
    
    [menu alignItemsVerticallyWithPadding:10];
    
    [menu setPosition:ccp(size.width/2,size.height/2)];
    
    [self addChild:menu];
}


-(void) startGame{
    
    [self removeAllChildren];
    
}


-(void) playingNow:(id)sender{
    
    CCScene * playingScene = [DotPlayingScnen scene];
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionMoveInR transitionWithDuration:0.2 scene:playingScene]];
}
-(void) playingdouble:(id)sender{
    
    CCScene * playingScene = [DotPlayingdoubleScnen scene];
    
    [[CCDirector sharedDirector] replaceScene:[CCTransitionMoveInR transitionWithDuration:0.2 scene:playingScene]];
}







-(void)onEnterTransitionDidFinish{
    [super onEnterTransitionDidFinish];
    NSLog(@"trans");
}

@end
