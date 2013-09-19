//
//  PersistencyManager.m
//  BlueLibrary
//
//  Created by Fangzhou Lu on 9/18/13.
//  Copyright (c) 2013 Eli Ganem. All rights reserved.
//

#import "PersistencyManager.h"

@interface PersistencyManager(){
    //an array of all albums
    NSMutableArray *albums;
}

@end

@implementation PersistencyManager

- (id)init
{
    self = [super init];
    if(self){
        albums = [NSMutableArray arrayWithArray:
                  @[[[Album alloc] initWithTitle:@"Best of Bowie" artist:@"David Bowie" converUrl:@"http://www.coversproject.com/static/thumbs/album/album_david%20bowie_best%20of%20bowie.png" year: @"1992"],
                    [[Album alloc] initWithTitle:@"It's my Life" artist:@"No Doubt" converUrl:@"http://www.coversproject.com/static/thumbs/album/album_no%20doubt_its%20my%20life%20%20bathwater.png" year:@"2003"],
                    [[Album alloc] initWithTitle:@"Nothing Like The Sun" artist:@"String" converUrl:@"http://www.coversproject.com/static/thumbs/album/album_sting_nothing%20like%20the%20sun.png" year:@"1999"],
                    [[Album alloc] initWithTitle:@"Starting at the Sun" artist:@"U2" converUrl:@"http://www.coversproject.com/static/thumbs/album/album_u2_staring%20at%20the%20sun.png"  year:@"2000"],
                    [[Album alloc] initWithTitle:@"American Pie" artist:@"Madonna" converUrl:@"http://www.coversproject.com/static/thumbs/album/album_madonna_american%20pie.png" year:@"2000"]]];
    }
    return self;
}

- (NSArray *)getAlbums
{
    return albums;
}

- (void)addAlbum:(Album *)album atIndex:(NSInteger)index
{
    if(albums.count >= index){
        [albums insertObject:album atIndex:index];
    }else{
        [albums addObject:album];
    }
}

- (void)deleteAlbumAtIndex:(NSInteger)index
{
    [albums removeObjectAtIndex:index];
}

@end
