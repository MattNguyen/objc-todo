//
//  TodoItem.m
//  Todo
//
//  Created by Matthew Nguyen on 3/3/14.
//  Copyright (c) 2014 Matthew Nguyen. All rights reserved.
//

#import "TodoItem.h"

@implementation TodoItem

- (id)initWithTitle:(NSString *)title {
    if ((self = [super init])) {
        _title = [title copy];
    }
    NSLog(@"Created task: %@", self.title);
    return self;
}

- (id)init:(NSString *)title {
    return [self initWithTitle:title];
}

- (void)markComplete {
    self.complete = YES;
}
@end
