//
//  HorizontalScroller.h
//  BlueLibrary
//
//  Created by Fangzhou Lu on 9/23/13.
//  Copyright (c) 2013 Eli Ganem. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HorizontalScrollerDelegate;

@interface HorizontalScroller : UIView

@property (weak) id<HorizontalScrollerDelegate> delegate;
- (void)reload;

@end

@protocol HorizontalScrollerDelegate <NSObject>

@required

//ask the delegate how many views he want to present inside the horizontal scroller
- (NSInteger)numberOfViewsForHorizontalScroller:(HorizontalScroller*)scroller;

//ask the delegate to return the view that should appear at <index>
- (UIView *)horizontalScroller:(HorizontalScroller *)scroller viewAtIndex:(NSInteger)index;

//inform the delegate what the view at <index> has been clicked
- (void)horizontalScroller:(HorizontalScroller *)scroller clickedViewAtIndex:(NSInteger)index;

@optional
//ask the delegate for the indexof the initial view to display. this method is optional
//and defaults to 0 if it's not implememnted by the delegate
- (NSInteger)initialViewIndexForHorizontalScroller:(HorizontalScroller *)scroller;


@end
