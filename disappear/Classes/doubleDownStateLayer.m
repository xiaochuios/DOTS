//
//  DownStateLayer.m
//  disappear
//
//  Created by CpyShine on 13-6-6.
//  Copyright 2013年 CpyShine. All rights reserved.
//

#import "doubleDownStateLayer.h"
#import "DotdoubleHudController.h"


@implementation doubleDownStateLayer


- (id)init
{
    CGSize s = [CCDirector sharedDirector].winSize;
    self = [super initWithColor:ccc4(255,255,255, 255) width:s.width height:60];
    if (self) {
        
        [self setAnchorPoint:ccp(0, 0) ];
        
        CCMenuItemImage * skillOne = [CCMenuItemImage itemWithNormalImage:@"stoptimebutton.png" selectedImage:@"stoptimebutton_back.png" target:self selector:@selector(skillOnePressed)];
        CCMenuItemImage * skillTwo = [CCMenuItemImage itemWithNormalImage:@"deleteonebutton.png" selectedImage:@"deleteonebutton_back.png" target:self selector:@selector(skillTwoPressed)];
        CCMenuItemImage * skillThree = [CCMenuItemImage itemWithNormalImage:@"deleteallbutton.png" selectedImage:@"deleteallbutton_back.png" target:self selector:@selector(skillThreePressed)];
           CCMenuItemImage * skillOne1 = [CCMenuItemImage itemWithNormalImage:@"stoptimebutton.png" selectedImage:@"stoptimebutton_back.png" target:self selector:@selector(skillOnePressed)];
        CCMenuItemImage * skillTwo1 = [CCMenuItemImage itemWithNormalImage:@"deleteonebutton.png" selectedImage:@"deleteonebutton_back.png" target:self selector:@selector(skillTwoPressed)];
        CCMenuItemImage * skillThree1 = [CCMenuItemImage itemWithNormalImage:@"deleteallbutton.png" selectedImage:@"deleteallbutton_back.png" target:self selector:@selector(skillThreePressed)];
        
        
        [skillOne setAnchorPoint:ccp(0, 0)];
        [skillTwo setAnchorPoint:ccp(0.5, 0)];
        [skillThree setAnchorPoint:ccp(1, 0)];
        
        [skillOne1 setAnchorPoint:ccp(0, 0)];
        [skillTwo1 setAnchorPoint:ccp(0.5, 0)];
        [skillThree1 setAnchorPoint:ccp(1, 0)];
        
        [skillOne setPosition:ccp(0, 0)];
        [skillTwo setPosition:ccp(s.width/2, 0)];
        [skillThree setPosition:ccp(s.width, 0)];
        
        
        [skillOne1 setAnchorPoint:ccp(0, 0)];
        [skillTwo1 setPosition:ccp(s.width/2, 0)];
        [skillThree1 setPosition:ccp(s.width, 0)];
        
        CCMenu * menu = [CCMenu menuWithItems:skillOne,skillTwo,skillThree, nil];
        CCMenu * menu1 = [CCMenu menuWithItems:skillOne1,skillTwo1,skillThree1, nil];
        [menu setPosition:ccp(0, 17)];
        [menu1 setPosition:ccp(0, 0)];
        [menu1 setRotation:180];
        
        [self addChild:menu];
        [self addChild:menu1];
        
        [self setVisible:false];
    }
    return self;
}

-(void)startAnimationDisplay{
    
    [self setAnchorPoint:ccp(0, 0) ];
    [self setPosition:ccp(0, -60) ];
    
    [self setVisible:true];
    //
    CCMoveTo * moveTo1 = [CCMoveTo actionWithDuration:0.2 position:ccp(0, 0)];
    CCMoveTo * moveTo2 = [CCMoveTo actionWithDuration:0.2 position:ccp(0, -17)];
    
    [self runAction:[CCSequence actions:moveTo1, moveTo2, nil]];
}


-(void) skillOnePressed{
    
    if (self.parent) {
        DotdoubleHudController * dhc = (DotdoubleHudController*)self.parent;
        [dhc playerUseSkill:tooltime];
    }
}
-(void) skillTwoPressed{
    if (self.parent) {
        DotdoubleHudController * dhc = (DotdoubleHudController*)self.parent;
        [dhc playerUseSkill:toolDisappearOne];
    }
}
-(void) skillThreePressed{
    if (self.parent) {
        DotdoubleHudController * dhc = (DotdoubleHudController*)self.parent;
        [dhc playerUseSkill:toolDisappearAll];
    }
}

@end
