//
//  TodoList.h
//  Todo
//
//  Created by Matthew Nguyen on 3/3/14.
//  Copyright (c) 2014 Matthew Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodoList : NSObject
@property (nonatomic, strong) NSMutableArray *todoItems;

- (id)initWithTodoItems:(NSArray *)todoItems;
- (id)initWithTodoItem: (NSString *)todoItem;
- (void)addItem:(NSString *)title;
- (void)showIncompleteTodoItems;
- (void)showCompletedTodoItems;
- (void)markComplete:(int)taskNumber;
@end