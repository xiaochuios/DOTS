//
//  DataHandle.h
//  disappear
//
//  Created by CpyShine on 13-5-29.
//  Copyright 2013年 CpyShine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

#include "configdouble.h"

@class DrawSprite;

@interface DatadoubleHandle : CCLayerColor {
    
    NSMutableArray * m_drawSpriteArray1;
    NSMutableArray * m_drawSpriteArray2;
    
    ccColor4F m_currentDrawColor,m_currentDrawColor2;
    
    NSMutableArray * m_stackArray, * m_stackArray2;
    
    BOOL m_drawLine, m_drawLine2;
    
    BOOL m_objectHasContina, m_objectHasContina2;
    
    BOOL m_removeAllSameColor, m_removeAllSameColor2;
    
    BOOL m_toolsDisappear, m_toolsDisappear2;
    
    BOOL m_toolsDisappearType, m_toolsDisappearType2;
    
    BOOL m_canPlaying;
    
    CGPoint m_movePos;
    
    CGPoint currentPoint1;
    
    
}
@property(nonatomic,readonly) NSInteger w_x;
@property(nonatomic,readonly) NSInteger h_y;

-(void) startAnimtionDisplay;

-(void) startPlaying;
-(void) setx:(NSInteger)x Y:(NSInteger)y;

//-(DrawSprite *)getCurrentSelectSprite:(CGPoint)pos color:(ccColor4F) color;

-(BOOL) touchBegine:(CGPoint) local;//touch begine

-(void) touchMove:(CGPoint) local; // touch moved

-(void) touchEnd;// touch 结束

-(void) disappearEnd;// 消除结束

-(BOOL) allDrawNodeBeSelected:(BOOL) disappearType;//全部选中
-(BOOL) allDrawNodeBeSelected2:(BOOL) disappearType;//全部选中

//-(void) cancelAllDrawNodeBeSelected;// 取消全部选中的情况

-(void) moveOut;
-(void) moveIn;

@end
