//
//  Album.h
//  BlueLibrary
//
//  Created by Fangzhou Lu on 9/18/13.
//  Copyright (c) 2013 Eli Ganem. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject <NSCoding>

@property (nonatomic, copy, readonly) NSString *title, *artist, *genre, *coverUrl, *year;

-(id)initWithTitle:(NSString *)title
            artist:(NSString *)artist
         converUrl:(NSString *)coverUrl
              year:(NSString *)year;

@end
