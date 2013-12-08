//
//  UpStateLayer.m
//  disappear
//
//  Created by CpyShine on 13-6-6.
//  Copyright 2013年 CpyShine. All rights reserved.
//

#import "doubleUpStateLayer.h"

#import "DotdoubleHudController.h"

@implementation doubleUpStateLayer

- (id)init
{
    CGSize s = [CCDirector sharedDirector].winSize;
    self = [super initWithColor:ccc4(255,255,255, 255) width:s.width height:60];
    if (self) {
        m_scoreItem = [CCMenuItemImage itemWithNormalImage:@"Images/scorebutton.png"
                                             selectedImage:@"Images/score_unselect.png" target:self selector:@selector(menuBePressed:)];
        
        m_timeItem = [CCMenuItemImage itemWithNormalImage:@"Images/timebutton.png"
                                            selectedImage:@"Images/time_unselect.png" target:self selector:@selector(menuBePressed:)];
        
        [m_scoreItem setAnchorPoint:ccp(0, 0)];
        [m_timeItem setAnchorPoint:ccp(1, 0)];
        
        [m_scoreItem setPosition:ccp(0, 0)];
        [m_timeItem setPosition:ccp(s.width/2+70, 82)];
        [m_timeItem setRotation:180];
        
        
        CCMenu * menu = [CCMenu menuWithItems:m_scoreItem, m_timeItem, nil];
        //[menu setRotation:180];
        [menu setPosition:ccp(0, -s.height/2)];
        [self addChild:menu];
        
        m_labelScore = [CCLabelTTF labelWithString:@"0" fontName:@"Arial" fontSize:18];
        m_labelTime  = [CCLabelTTF labelWithString:@"60" fontName:@"Arial" fontSize:18];
        scorelabel=[CCLabelTTF labelWithString:@"Score" fontName:@"Arial" fontSize:20];
        timelabel=[CCLabelTTF labelWithString:@"Time" fontName:@"Arial" fontSize:20];
        m_labelScore1 = [CCLabelTTF labelWithString:@"0" fontName:@"Arial" fontSize:18];
        m_labelTime1  = [CCLabelTTF labelWithString:@"60" fontName:@"Arial" fontSize:18];
        scorelabel1=[CCLabelTTF labelWithString:@"Score" fontName:@"Arial" fontSize:20];
        timelabel1=[CCLabelTTF labelWithString:@"Time" fontName:@"Arial" fontSize:20];
        
        [scorelabel setAnchorPoint:ccp(0, 0.5)];
        [scorelabel setColor:ccc3(0, 0, 0)];
        [scorelabel setPosition:ccp(m_scoreItem.contentSize.width/2-100,
                                    m_scoreItem.contentSize.height/2)];
        
        [scorelabel1 setAnchorPoint:ccp(0, 0.5)];
        [scorelabel1 setColor:ccc3(0, 0, 0)];
        [scorelabel1 setPosition:ccp(m_scoreItem.contentSize.width/2-100,
                                    m_scoreItem.contentSize.height/2)];
        
        [timelabel setAnchorPoint:ccp(0, 0.5)];
        [timelabel setColor:ccc3(0, 0, 0)];
        [timelabel setPosition:ccp(m_timeItem.contentSize.width/2-100,
                                   m_timeItem.contentSize.height/3)];
        
        [timelabel1 setAnchorPoint:ccp(0, 0.5)];
        [timelabel1 setColor:ccc3(0, 0, 0)];
        [timelabel1 setPosition:ccp(m_timeItem.contentSize.width/2-100,
                                   m_timeItem.contentSize.height/3)];
        
        [m_labelScore setAnchorPoint:ccp(0, 0.5)];
        [m_labelScore setColor:ccc3(0, 0, 0)];
        [m_labelScore setPosition:ccp(m_scoreItem.contentSize.width/2+10,
                                      m_scoreItem.contentSize.height/2)];
        [m_labelScore1 setAnchorPoint:ccp(0, 0.5)];
        [m_labelScore1 setColor:ccc3(0, 0, 0)];
        [m_labelScore1 setPosition:ccp(m_scoreItem.contentSize.width/2+10,
                                      m_scoreItem.contentSize.height/2)];
        
        [m_labelTime setAnchorPoint:ccp(0, 0.5)];
        [m_labelTime setColor:ccc3(0, 0, 0)];
        [m_labelTime setPosition:ccp(m_timeItem.contentSize.width/2+10,
                                     m_timeItem.contentSize.height/3)];
        
        [m_labelTime1 setAnchorPoint:ccp(0, 0.5)];
        [m_labelTime1 setColor:ccc3(0, 0, 0)];
        [m_labelTime1 setPosition:ccp(m_timeItem.contentSize.width/2+10,
                                     m_timeItem.contentSize.height/3)];
        
        [m_timeItem addChild:m_labelTime z:11];
        [m_timeItem addChild:scorelabel z:11];
        [m_timeItem addChild:m_labelScore z:11];
        [m_timeItem addChild:timelabel z:11];
        
        [m_scoreItem addChild:scorelabel1 z:11];
         [m_scoreItem addChild:m_labelScore1 z:11];
        [m_scoreItem addChild:timelabel1 z:11];
        [m_scoreItem addChild:m_labelTime1 z:11];
        
        [self setVisible:false];
    }
    return self;
}


-(void)startAnimationDisplay{
    
    CGSize s = [CCDirector sharedDirector].winSize;
    [self setVisible:true];
    
    [self setAnchorPoint:ccp(0.5, 0.5)];
    [self setPosition:ccp(0, s.height)];
   // [self  setRotation:180];
    
    
//    CCMoveTo * moveTo = [CCMoveTo actionWithDuration:0.2 position:ccp(0, s.height-60)];
//    CCMoveTo * moveTo2 = [CCMoveTo actionWithDuration:0.2 position:ccp(0, s.height-43)];
//    CCCallBlock * call = [CCCallBlock actionWithBlock:^{
        if (self.parent) {
            DotdoubleHudController * dhc = (DotdoubleHudController*)self.parent;
            [dhc startGame];
        }
//    }];
//    [self runAction:[CCSequence actions:moveTo, moveTo2, call, nil]];
}

-(void)resetScoreString:(NSString *)string{
    [m_labelScore setString:string];
    // [m_labelScore1 setString:string];
    
}
-(void) resetTimeString:(NSString *)string{
    [m_labelTime setString:string];
    
   // [m_labelTime1 setString:string];
}

-(void) menuBePressed:(id)sender{
    if (self.parent) {
        DotdoubleHudController *hc = (DotdoubleHudController*)self.parent;
        [hc gamePause];
    }
}

@end
