//
//  Album.m
//  BlueLibrary
//
//  Created by Fangzhou Lu on 9/18/13.
//  Copyright (c) 2013 Eli Ganem. All rights reserved.
//

#import "Album.h"

@implementation Album

-(id)initWithTitle:(NSString *)title artist:(NSString *)artist converUrl:(NSString *)coverUrl year:(NSString *)year
{
    self = [super init];
    if(self){
        _title = title;
        _artist = artist;
        _coverUrl = coverUrl;
        _year = year;
        _genre = @"Pop";
    }
    
    return self;
}

@end
