//
//  Album+TableRepresentation.m
//  BlueLibrary
//
//  Created by Fangzhou Lu on 9/19/13.
//  Copyright (c) 2013 Eli Ganem. All rights reserved.
//

#import "Album+TableRepresentation.h"

@implementation Album (TableRepresentation)

-(NSDictionary *)tr_tableRepresentation
{
    return @{@"title": @[@"Artist", @"Album", @"Genre", @"Year"],
             @"values": @[self.artist, self.title, self.genre, self.year]};
}

@end
