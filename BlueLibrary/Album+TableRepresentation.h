//
//  Album+TableRepresentation.h
//  BlueLibrary
//
//  Created by Fangzhou Lu on 9/19/13.
//  Copyright (c) 2013 Eli Ganem. All rights reserved.
//

#import "Album.h"

@interface Album (TableRepresentation)

- (NSDictionary *)tr_tableRepresentation;

@end
