//
//  LibraryAPI.h
//  BlueLibrary
//
//  Created by Fangzhou Lu on 9/18/13.
//  Copyright (c) 2013 Eli Ganem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

@interface LibraryAPI : NSObject

+ (LibraryAPI*)sharedInstance;
- (NSArray *)getAlbums;
- (void)addAlbum:(Album *)album atIndex:(NSInteger)index;
- (void)deleteAlbumAtIndex:(NSInteger)index;

@end
