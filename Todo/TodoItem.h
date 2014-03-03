//
//  TodoItem.h
//  Todo
//
//  Created by Matthew Nguyen on 3/3/14.
//  Copyright (c) 2014 Matthew Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodoItem : NSObject

@property NSString *title;
@property BOOL complete;

- (id)initWithTitle:(NSString *)title;
- (void)markComplete;

@end
